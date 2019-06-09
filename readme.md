## Zendesk - Create a ticket viewer challenge

To set this project up, open your terminal and type the following:

- cd home
- git clone git@github.com:jayfiled/zen_tickets.git
- cd zen_tickets.git
- gem install
- touch .env
- echo USERN = 'username.supplied.in.email' << .env
- echo PASS = 'password.supplied.in.email' << .env




### Project To-do
- [x] **Set up Sinatra project**
- [x] **Set up .env for authentication masking**
- [x] **Figure out how to use basic authentication with api calls**
- [x] **Test out api calls in console and inspect the response**
- [ ] **Offload the api method calls to a Ticket object** <sup>~ probably a sinatra dir problem ~</sup>
- [x] **Set up basic front end and inject the response from API**
- [x] **Style the front end**
  - [x] **Hide the description behind the subject and have it push elements down when clicked**
- [x] **Emulate 100 tickets being inserted into the view**
- [x] **Refactor the view**
- [x] **Display all results on one page and add a button to reveal 25 at a time**
- [ ] **Refactor app.rb to put methods in a class**
- [ ] **Refactor unused css**
- [ ] **Dry up tickets.erb HTML so that I am loading partials instead of duplicate HTML**
- [ ] **Dry up Javascript.  Lots of repetition for toggling classes and getting buttons**
- [ ] **Apply fade in animation to delay for every nth child in the ticket wrapper**
- [ ] **Find a complimentary color so it's not so pink**
