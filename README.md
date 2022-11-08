# RAILS AUTH

Simple Authentication App in Rails

## DEPENDENCIES

- Ruby version: 3.0.0
- Rails version: ~7.0.3
- warden gem

## SETUP

- Configuration
- Database creation
- Database initialization

## TESTING

- How to run the test suite

## OTHER STUFF

- Services (job queues, cache servers, search engines, etc.)
- Deployment instructions
- ...

---

## TODO:

- [] create HOME view
- [] create database: `rails db:create`
- [] create Migration
    - [] create User table: email, password
    - [] timestamps
    - [] add index on user email column
- [] create User Models
- [] create REGISTER view
- [] create REGISTER route

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



