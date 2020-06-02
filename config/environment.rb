ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app/models/concerns'
require './app/controllers/application_controller'
require './app/controllers/sessions_controller'
require './app/controllers/users_controller'
require './app/controllers/callsigns_controller'
require './app/controllers/contacts_controller'
require_all 'app'

