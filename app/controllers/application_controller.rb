require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "JAufk839h2!"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    session[:callsign_id] = nil
    erb :welcome
  end

  helpers do

    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end


end
