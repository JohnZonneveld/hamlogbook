class CallsignsController < ApplicationController

    # GET: /callsigns
  	get "/callsigns" do
    	erb :"/callsigns/index"
    end

    # GET: /callsigns/new
  	get "/callsigns/new" do
    	erb :"/callsigns/new"
  	end

  	# POST: /callsigns
  	post "/callsigns" do
    	callsign=Callsign.create(params[:callsign])
    	callsign.user_id = current_user.id
    	callsign.save

    	erb :welcome
  	end

  	# GET: /callsigns/slug
  	get "/callsigns/:slug" do
    	@callsign = Callsign.find_by_slug(params[:slug])
    	session[:callsign] = params[:slug]
    	erb :"/callsigns/show"
  	end

  	# GET: /callsigns/slug/edit
  	get "/callsigns/:slug/edit" do
		@callsign = Callsign.find_by_slug(params[:slug])
    	erb :"/callsigns/edit"
  	end

  	# PATCH: /callsigns/slug
	patch "/callsigns/:slug" do
		@callsign = Callsign.find_by_slug(params[:slug])
		@callsign.update(params[:callsign])
		@callsign.active = !!params[:callsign][:active]
		@callsign.save
    	redirect "/callsigns/#{@callsign.slug}"
  	end

  	# DELETE: /callsigns/slug/delete
  	delete "/callsigns/:slug/delete" do
    	callsign= Callsign.find(params[:slug])
    	callsign.destroy
    	redirect "/"
  	end
end
