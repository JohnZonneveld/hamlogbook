class ContactsController < ApplicationController

  	# GET: /contacts
  	get "/contacts" do
    	erb :"/contacts/index"
  	end

  	# GET: /contacts/new
  	get "/contacts/new" do
    	@callsign = Callsign.find_by_slug(session[:callsign])
    	erb :"/contacts/new"
  	end

  	# POST: /contacts
  	post "/contacts" do
 	   	cs = Callsign.find_by_slug(session[:callsign])
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
    	@callsign = Callsign.find_by_slug(session[:callsign])
    	@contact = Contact.find(params[:id])
    	erb :"/contacts/edit"
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
    	contact.destroy
    	redirect "/contacts"
  	end
  
end
