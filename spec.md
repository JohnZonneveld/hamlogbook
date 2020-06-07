Specifications for the Sinatra Assessment
Specs:

 [x] Use Sinatra to build the app<br>
     -  gem sinatra and gem 'sinatra-activerecord', :require => 'sinatra/activerecord' in Gemfile<br>
     -  < Sinatra::Base in ApplicationController<br>
 [x] Use ActiveRecord for storing information in a database<br>
     -  gem 'sinatra-activerecord', :require => 'sinatra/activerecord' in Gemfile<br>
     -  ActiveRecord::Base.establish_connection(<br>
     -    :adapter => "sqlite3",<br>
     -    :database => "db/#{ENV['SINATRA_ENV']}.sqlite"<br>
     -  )<br>
     -  in environment.rb<br>
 [x] Include more than one model class (e.g. User, Post, Category)<br>
     -  in total 3 models, User, Callsign and Contacts<br>
 [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)<br>
     -     User has_many :callsigns<br>
     -     User has_many :contacts, through: :callsigns<br>
 [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)<br>
     -  Callsign has_many :contacts<br>
     -  Callsign belongs_to :user<br>
 [x] Include user accounts with unique login attribute (username or email)<br>
     -  in signup route included a check if username already exists<br>
 [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying<br>
 [x] Ensure that users can't modify content created by other users<br>
 [x] Include user input validations<br>
     -  only validation on signup and login with error messages<br>
 [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)<br>
 [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for <br>your code<br>
<br>
Confirm<br>
<br>
 [x] You have a large number of small Git commits<br>
     -  at this moment at 15 commits<br>
 [x] Your commit messages are meaningful<br>
 [x] You made the changes in a commit that relate to the commit message<br>
 [x] You don't include changes in a commit that aren't related to the commit message<br>