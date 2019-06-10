require File.dirname(__FILE__) + '/app.rb'

base_url = 'https://katchupsupport.zendesk.com/api/v2/'
auth = { username: ENV['USERN'], password: ENV['PASS'] }

# Ticket model should connect to the Zendesk API
describe 'Ticket class' do
  let(:tickets) { Ticket.get_all_tickets(base_url, auth) }
  it 'should connect to the Zendesk API' do
    expect(:tickets).should_not eq(nil)
  end

  it 'should return a hash' do
    expect(:tickets).class.should eq(Hash)
  end

  it 'should have 100 tickets' do
    expect(:tickets).size.should eq(100)
  end

  it 'should return an error when wrong authentication is used' do
    expect(:tickets).to eq('...')
  end
  it 'should return an error when there is no network activity' do
    expect(:tickets).to raise(Net::OpenTimeout).error
  end
# Net::OpenTimeout: execution expired
# from /home/jayfiled/.rbenv/versions/2.5.3/lib/ruby/2.5.0/net/http.rb:937:in `initialize'
end

describe 'The web site' do
  it 'should return a 200 OK' do
    expect().should eq()
  end
    it 'should return a 404 not found' do
    expect().should eq()
  end

end

# Tests:
# Should return a data structure of type hash
# Should return a hash of size 100.
# Should return this if authentication fails
# Should return this if there are network issues

# The program should load the home page
# Should return this if the home page doesn't load

# Questions:

# Can I use CONSTANTS from app.rb to use the base_url and auth
# variables here?


# Error handling
# https://medium.com/rubycademy/error-handling-in-ruby-part-i-557898185e2f
