class SessionsController < ApplicationController

    get '/signup' do
        erb :'sessions/signup'
    end

    post '/signup' do
        if !User.find_by(username: params[:username])
            @user = User.create(params)
            session[:user_id] = @user.id

            erb :welcome
        else
            @error = "username already in use"
            erb :'sessions/signup'
        end
    end

    get '/logout' do
        session[:user_id] = nil
        session[:callsign] = nil
        redirect '/'
    end

    get '/login' do
        erb :'sessions/login'
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect to '/'
        else
            if !@user
                @error = "That username does not exist"
            else
                @error = "Something wasn't quite right, please try again."
            end
            erb :'/sessions/login'
        end
    end
        
end
