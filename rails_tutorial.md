# LOGIN SYSTEM

building login system


Implement a basic user login system in a Rails app  
without using a high-level gem like devise.
You may use gems to help you e.g. warden.
You don't need to do password recovery or anything like that,
just the basic
"User with an existing account can login"
flow.

* Code clarity
* Tests 
* clear Git commit messages

Don't spend more than a few hours on this code  
the goal here isn't for you to fully finish the feature  
(although you can if you want)  
but to have a chunk of your code  
to discuss at the interview.

60 to 90 minutes

### TODO:

[] create HOME view
[] create database: `rails db:create`
[] create Migration
    [] create User table: email, password
    [] timestamps
    [] add index on user email column
[] create User Models
[] create REGISTER view
[] create REGISTER route

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


