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

  # GET: /callsigns/5
  get "/callsigns/:id" do
    erb :"/callsigns/show"
  end

  # GET: /callsigns/5/edit
  get "/callsigns/:id/edit" do
    erb :"/callsigns/edit"
  end

  # PATCH: /callsigns/5
  patch "/callsigns/:id" do
    redirect "/callsigns/:id"
  end

  # DELETE: /callsigns/5/delete
  delete "/callsigns/:id/delete" do
    redirect "/callsigns"
  end
end
