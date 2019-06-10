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
end

get '/' do
  @tickets = Ticket.get_all_tickets(base_url, auth)['tickets']
  binding.pry
  erb :home
end


# For reference.  Error with bad internet connection

# Net::OpenTimeout: execution expired
# from /home/jayfiled/.rbenv/versions/2.5.3/lib/ruby/2.5.0/net/http.rb:937:in `initialize'
