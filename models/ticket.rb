require 'httparty'
require 'dotenv'
Dotenv.load('.env')

class Ticket
  auth = { username: ENV['USERN'], password: ENV['PASS'] }

  result = HTTParty.get('https://katchupsupport.zendesk.com/api/v2/tickets.json', basic_auth: auth)

  par = result.parsed_response

  def get_ticket(id)

  end

end

# byebug

# p par['tickets']
# p par['next_page']
# p par['previous_page']
# p par['count']
