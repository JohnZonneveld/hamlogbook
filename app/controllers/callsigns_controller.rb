class CallsignsController < ApplicationController

    # GET: /callsigns
  	get "/callsigns" do
    	erb :"/callsigns/index"
    end

    # GET: /callsigns/new
  	get "/callsigns/new" do
    	erb :"/callsigns/new"
  	end

	get "/callsigns/:id/contacts" do
		@contacts = Contact.all.where(callsign_id: params[:id])
		@callsign = Callsign.find(params[:id])
		erb :"/contacts/index"
	end 	

  	# POST: /callsigns
  	post "/callsigns" do
    	callsign=current_user.callsigns.build(params[:callsign])
		if callsign.save
			erb :welcome
		else
			@error = "Callsign is required"
			erb :"/callsigns/new"
		end
  	end

  	# GET: /callsigns/slug
  	get "/callsigns/:id" do
    	@callsign = Callsign.find(params[:id])
    	session[:callsign_id] = params[:id]
    	erb :"/callsigns/show"
  	end

  	# GET: /callsigns/slug/edit
	get "/callsigns/:slug/edit" do
		@callsign = Callsign.find_by_slug(params[:slug])
		if current_user.id == @callsign.user_id
			erb :"/callsigns/show"
		else
			@error="You are not authorized to view that page"
			# redirect '/'
			erb :welcome
		end
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
