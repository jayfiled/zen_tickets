# Ticket class to hold methods to get tickets from the Zendesk API
class Ticket
  def get_ticket(url, id, auth)
    result = HTTParty.get("#{url}tickets/#{id}.json", basic_auth: auth)
    result.parsed_response
  end

  def self.get_all_tickets(url, auth)
    result = HTTParty.get("#{url}tickets.json", basic_auth: auth)
    result.parsed_response
  end
end
