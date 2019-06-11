## Zendesk - Create a ticket viewer challenge

### Installation instructions

The below steps assumes you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed on your system (and using the bash cmd in windows) and also the latest version of [ruby](https://www.ruby-lang.org/en/documentation/installation/).

To check your Ruby version:
- `ruby -v`
This was written using `ruby v2.5.3`

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
- Follow the prompts to retrieve your support tickets and view each one 💪
- To run tests: `rspec app_spec.rb`
  - Two tests will fail.  One testing a case with no network and one for wrong authentication.
  - To make them pass (and others fail):
    - Turn off WiFi and run tests again
    - Change the password in the .env file and run the tests again.



### To-do
- [x] **Set up Sinatra project**
- [x] **Set up .env for authentication masking**
- [x] **Figure out how to use basic authentication with api calls**
- [x] **Test out api calls in console and inspect the response**
- [x] **Offload the api method calls to a Ticket object**
- [x] **Set up basic front end and inject the response from API**
- [x] **Style the front end**
  - [x] **Hide the description behind the subject and have it push elements down when clicked**
- [x] **Emulate 100 tickets being inserted into the view**
- [x] **Refactor the view**
- [x] **Display all results on one page and add a button to reveal 25 at a time**
- [x] **Run up some tests**
  - [x] **TTD**
  - [x] **System tests**
  - [ ] **Front end tests in Capybara with Selenium**
- [x] **Add basic error handling**
- [ ] **Fix the output of Rspec to not show the whole contents of the ticket object**
- [ ] ** Add automatic testing and live notifications
- [x] **Refactor app.rb to put methods in a class**
- [ ] **Refactor unused css**
- [ ] **Dry up tickets.erb HTML so that I am loading partials instead of duplicate HTML**
- [ ] **Dry up Javascript.  Lots of repetition for toggling classes and getting buttons**
- [ ] **Apply fade in animation to delay for every nth child in the ticket wrapper**
- [ ] **Find a complimentary color so it's not so pink**
- [ ] **Deploy to Heroku**

### Pain points
- Browser needs more cache refreshes with Sinatra vs Rails
- Problem: Wasted too much time with CSS positioning, display absolute, non memorable class names
- Solution:  Moved the layout to the top right corner instead of the middle.
- Not being able to add event listeners until elements have transitioned to the screen.
- Sinatra and local file paths.  Could not require relative if the class lived in another subdirectory. Moved to root.
- Spent some time trying to use environment variables with Sinatra. My problem was that I was using USERNAME and PASSWORD which were reseved by the system.
- Was hoping for a simple, but elegant UI.  But ended up spending too much time on hiding and unhiding elements.  Would look for a package in the future.

### Improvements

  - Use css or js frameworks
  - Use ruby gems that help with pagination, api calls
  - Would consider using rails as the resources online are more up to date.
  - Template the view
