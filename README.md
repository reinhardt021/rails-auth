# RAILS AUTH

Simple Authentication App in Rails

## DEPENDENCIES

- Ruby version: 3.0.0
- Rails version: ~7.0.3
- rspec-rails
- shoulda-matchers
- bcrypt
- warden gem

## SETUP

- Configuration: run `bundle install`
- Database creation: 'bin/rails db:create'
- Database initialization: 'bin/rails db:migrate'

## TESTING

- How to run the test suite in command-line: `bundle exec rspec`

## OTHER STUFF

- run the server: `bin/rails server`
- Services (job queues, cache servers, search engines, etc.)
- Deployment instructions
- ...

---

## TODO:

- [x] create HOME view
- [x] create REGISTER route
- [x] create REGISTER view
- [x] create database: `rails db:create`
- [x] create Migration
    - [x] create User table: email, password
    - [x] timestamps
    - [x] add index on user email column
- [x] create User Models
- [x] create REGISTER form
- [x] handle form submit to create
- [x] handle form submit to redirect
- [x] manually destroy duplicate emails
- [x] make emails unique in the database

can probably do these first then change to warden later
- [x] create login route
- [x] create login page with form
- [x] create Session Controller

- [ ] play FIREPLACE background (might only work at night)

- [x] change to use warden to redirect from home to register page


### MODELS

- User
    - email: unique, presence
    - password: encrypted, presence, min 8 characters

### ROUTES

- get '/', to: 'home#index'
- get '/register', to: 'users#new'
    - has heading 
    - has form
      - has email field (with label)
      - has password field (with label): minimum 8 characters
      - has confirm password field (with label)
      - has submit button
    - has link to '/login' if HAS account
- post '/user', to: 'users#create'
    - def user_params
- get '/login', SessionController#new
    - has heading 
    - has form
      - has email field (with label)
      - has password field (with label)
      - has submit button
    - has link to '/register' if NO account
- post '/login'
- delete '/logout', to: 'sessions#destroy'

### CONTROLLERS

- HomeController
    - #index: shows a basic welcome home VIEW page
    - index: has authentication on it to redirect (use case for warden)
        - home '/' redirects to '/register'
- UserController
    - users#new: register VIEW page
    - users#create: (register) hash to store in database && stores to session 
        - can redirect to home
- SessionController
    - sessions#new: login VIEW page
    - sessions#create: encryption (bcrypt) needed to hash the password
    - sessions#destroy

- VIEWS
    - home/index.html.erb
    - users/new.html.erb
    - sessions/new.html.erb

### REFERENCES

- https://github.com/wardencommunity/warden
- https://github.com/wardencommunity/rails_warden
- https://github.com/pigri/sinatra-warden-api 
- https://gorails.com/forum/warden-and-system-tests-are-driving-me-insane
- https://www.railstutorial.org/book/rails_flavored_ruby#sec-constructors
- https://www.karinabaha.com/posts/ruby-on-rails-has_secure_password-tutorial
- https://code.tutsplus.com/articles/how-to-build-an-unobtrusive-login-system-in-rails--net-9194
- https://www.karinabaha.com/posts/ruby-on-rails-has_secure_password-tutorial
- https://lucatironi.net/tutorial/2015/08/23/rails_api_authentication_warden/
- http://railscasts.com/episodes/250-authentication-from-scratch
- http://railscasts.com/episodes/270-authentication-in-rails-3-1
  - https://github.com/railscasts/270-authentication-in-rails-3-1/tree/master/auth-before/config
- http://railscasts.com/episodes/305-authentication-with-warden?view=asciicast

