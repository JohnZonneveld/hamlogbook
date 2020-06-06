Specifications for the Sinatra Assessment
Specs:

 [x] Use Sinatra to build the app
     gem sinatra and gem 'sinatra-activerecord', :require => 'sinatra/activerecord' in Gemfile
     < Sinatra::Base in ApplicationController
 [x] Use ActiveRecord for storing information in a database
     gem 'sinatra-activerecord', :require => 'sinatra/activerecord' in Gemfile
     ActiveRecord::Base.establish_connection(
       :adapter => "sqlite3",
       :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
     )
     in environment.rb
 [x] Include more than one model class (e.g. User, Post, Category)
     in total 3 models, User, Callsign and Contacts
 [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        User has_many :callsigns
        User has_many :contacts, through: :callsigns
 [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
     Callsign has_many :contacts
     Callsign belongs_to :user
 [x] Include user accounts with unique login attribute (username or email)
     in signup route included a check if username already exists
 [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
 [x] Ensure that users can't modify content created by other users
 [x] Include user input validations
     only validation on signup and login with error messages
 [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

 [x] You have a large number of small Git commits
     at this moment at 15 commits
 [x] Your commit messages are meaningful
 [x] You made the changes in a commit that relate to the commit message
 [x] You don't include changes in a commit that aren't related to the commit message