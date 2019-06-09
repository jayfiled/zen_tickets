require File.dirname(__FILE__) + '/app.rb'

base_url = 'https://katchupsupport.zendesk.com/api/v2/'
auth = { username: ENV['USERN'], password: ENV['PASS'] }

# Ticket model should connect to the Zendesk API
describe 'Ticket model' do
  it 'should connect to the Zendesk API' do
    @tickets = Ticket.get_all_tickets(base_url, auth)
    expect(@tickets).should_not eql(nil)
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
