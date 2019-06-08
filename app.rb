require 'httparty'
require 'dotenv'
Dotenv.load('.env')
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'
require 'better_errors'
require_relative 'models/ticket'

base_url = 'https://katchupsupport.zendesk.com/api/v2/'
auth = { username: ENV['USERN'], password: ENV['PASS'] }

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  @words = 'hey'
  # byebug
  @tickets = get_all_tickets(base_url, auth)
  erb :home
end

get '/index' do
  # byebug
  # @ticket = get_ticket(base_url, auth)
  erb :index
end

get '/:id' do
  # byebug
  # @ticket = get_ticket(base_url, id, auth)
  erb :show
end

# Ideally I want to offload these to another class 'Ticket', but when I do
# I can't call the class method..

def get_ticket(url, id, auth)
  result = HTTParty.get("#{url}tickets/#{id}.json", basic_auth: auth)
  result.parsed_response
end

def get_all_tickets(url, auth)
  result = HTTParty.get("#{url}tickets.json", basic_auth: auth)
  result.parsed_response['tickets']
end
