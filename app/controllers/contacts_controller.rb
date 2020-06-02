class ContactsController < ApplicationController

  # GET: /contacts
  get "/contacts" do
    erb :"/contacts/index"
  end

  # GET: /contacts/new
  get "/contacts/new" do
    binding.pry
    erb :"/contacts/new"
  end

  # POST: /contacts
  post "/contacts" do
    redirect "/contacts"
  end

  # GET: /contacts/5
  get "/contacts/:id" do
    erb :"/contacts/show"
  end

  # GET: /contacts/5/edit
  get "/contacts/:id/edit" do
    erb :"/contacts/edit"
  end

  # PATCH: /contacts/5
  patch "/contacts/:id" do
    redirect "/contacts/:id"
  end

  # DELETE: /contacts/5/delete
  delete "/contacts/:id/delete" do
    redirect "/contacts"
  end
end
