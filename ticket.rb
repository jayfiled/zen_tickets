# Ticket class to hold methods to get tickets from the Zendesk API
class Ticket
  def initialize
  end

  def self.get_ticket id
    auth = { username: ENV['USERN'], password: ENV['PASS'] }
    result = HTTParty.get("https://katchupsupport.zendesk.com/api/v2/tickets/#{id}.json", basic_auth: auth)
    result.parsed_response
  end
end

# byebug

# p par['tickets']
# p par['next_page']
# p par['previous_page']
# p par['count']
