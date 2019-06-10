## Zendesk - Create a ticket viewer challenge

To set this project up, open your terminal and type the following:

- `cd ~/`
- `mkdir code-challenge-joel-james && cd code-challenge-joel-james`
- `git clone git@github.com:jayfiled/zen_tickets.git`
- `cd zen_tickets`
- `bundle install`
- `touch .env`
- `echo USERN = 'username.supplied.in.email' >> .env`
- `echo PASS = 'password.supplied.in.email' >> .env`
- `bundle exec ruby app.rb`
- Navigate to [localhost](http://localhost:4567/) in your browser



### Project To-do
- [x] **Set up Sinatra project**
- [x] **Set up .env for authentication masking**
- [x] **Figure out how to use basic authentication with api calls**
- [x] **Test out api calls in console and inspect the response**
- [x] **Offload the api method calls to a Ticket object** <sup>~ probably a sinatra dir problem ~</sup>
- [x] **Set up basic front end and inject the response from API**
- [x] **Style the front end**
  - [x] **Hide the description behind the subject and have it push elements down when clicked**
- [x] **Emulate 100 tickets being inserted into the view**
- [x] **Refactor the view**
- [x] **Display all results on one page and add a button to reveal 25 at a time**
- [ ] **Run up some tests**
- [x] **Refactor app.rb to put methods in a class**
- [ ] **Refactor unused css**
- [ ] **Dry up tickets.erb HTML so that I am loading partials instead of duplicate HTML**
- [ ] **Dry up Javascript.  Lots of repetition for toggling classes and getting buttons**
- [ ] **Apply fade in animation to delay for every nth child in the ticket wrapper**
- [ ] **Find a complimentary color so it's not so pink**
- [ ] **Deploy to Heroku**

### Pain points
- Browser needs more cache refreshes with Sinatra vs Rails
- Wasted too much time with CSS
  - too many absolute references
  - too many bad class names
- Not being able to add event listeners until elements have transitioned to the screen.
- Sinatra and local file paths.  Could not import css from a components folder/Classes from a model folder
- Spent some time trying to use environment variables with Sinatra.
- Was hoping for a simple, but elegant UI.  But ended up spending too much time and in the end, didn't end up with an elegant UI.

### Improvements

  - Use css frameworks
  - Use ruby gems that help with pagination, api calls
  - Use RAILS..
  - Template the view
