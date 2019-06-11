require 'pry-byebug'
require 'rack/test'
require File.dirname(__FILE__) + '/app.rb'

base_url = 'https://katchupsupport.zendesk.com/api/v2/'
auth = { username: ENV['USERN'], password: ENV['PASS'] }
RSpec::Support::ObjectFormatter.default_instance.max_formatted_output_length = 250
set :environment, :test

def app
  Sinatra::Application
end

describe 'The Web Site' do
  include Rack::Test::Methods

  it 'should return a 200 OK' do
    get '/'
    last_response.should be_ok
  end
  it 'should return a 404 not found on unknown route' do
    get '/ticket'
    last_response.should_not be_ok
  end
  it 'should return an error when there is no network activity' do
    expect { Ticket.get_all_tickets(base_url, auth) }.to raise_error
  end
end

describe 'Ticket class' do
  let(:tickets) { Ticket.get_all_tickets(base_url, auth) }
  it 'should connect to the Zendesk API' do
    expect(tickets).should_not eq(nil)
  end

  it 'should return a hash' do
    tickets.should be_kind_of(Hash)
  end

  it 'should have 100 tickets' do
    tickets['tickets'].size.should eq(100)
  end

  auth_error = { 'error' => "Couldn't authenticate you" }

  it 'should return an error when wrong authentication is used' do
    expect(tickets).to eq(auth_error)
  end
end
