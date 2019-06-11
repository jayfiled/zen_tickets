require 'better_errors'
require 'dotenv'
Dotenv.load('.env')
require 'httparty'
require 'pry-byebug'
require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'ticket'

base_url = 'https://katchupsupport.zendesk.com/api/v2/'
auth = { username: ENV['USERN'], password: ENV['PASS'] }

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __dir__)
  disable :show_exceptions
end

begin
  get '/' do
    @tickets = Ticket.get_all_tickets(base_url, auth)['tickets']
    erb :home
  end
rescue SocketError
  erb :error
end

not_found do
  erb :error
end
