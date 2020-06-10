class ContactsController < ApplicationController

  	# GET: /contacts
	get "/contacts" do
		if !!session[:callsign_id]
			@contacts = current_user.contacts.where(callsign_id: session[:callsign_id])
			@callsign = Callsign.find(session[:callsign_id])
		else
			@contacts = current_user.contacts
		end
    	erb :"/contacts/index"
  	end

  	# GET: /contacts/new
  	get "/contacts/new" do
    	@callsign = Callsign.find(session[:callsign_id])
    	erb :"/contacts/new"
  	end

  	# POST: /contacts
  	post "/contacts" do
 	   	cs = Callsign.find(session[:callsign_id])
    	contact=Contact.create(params[:contact])
    redirect "/contacts"
  	end

  	# GET: /contacts/5
  	get "/contacts/:id" do
    	@contact = Contact.find(params[:id])
    	erb :"/contacts/show"
  	end

  	# GET: /contacts/5/edit
	  get "/contacts/:id/edit" do
		binding.pry
		@contact = Contact.find(params[:id])
		if @contact.callsign_id == session[:callsign_id]
    		@contact = Contact.find(params[:id])
			erb :"/contacts/edit"
		else
			@error = "You are not authorized to view this page"
			erb :"/contacts/"
		end
  	end

   	# PATCH: /contacts/5
	patch "/contacts/:id" do
    	contact = Contact.find(params[:id])
    	contact.update(params[:contact])
    	contact.qsl_rcvd = !!params[:contact][:qsl_rcvd]
    	contact.qsl_send = !!params[:contact][:qsl_send]
    	contact.save
    	redirect "/contacts/#{params[:id]}"
  	end

  	# DELETE: /contacts/5/delete
  	delete "/contacts/:id/delete" do
		contact = Contact.find(params[:id])
		if @contact.callsign_id == session[:callsign_id]
			contact.destroy
		end
			redirect "/contacts"
  	end
  
end
