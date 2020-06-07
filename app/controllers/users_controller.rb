class UsersController < ApplicationController

  	# GET: /users
  	get "/users" do
    	erb :"/users/index"
  	end

	# GET: /users/5/edit
  	get "/users/:id/edit" do
    	erb :"/users/edit"
  	end

  	# GET: /users/5
  	get "/users/:id" do
    	erb :"/users/show"
  	end

  	# PATCH: /users/5
  	patch "/users/:id" do
      	user=User.find(params[:id])
		user.update(params[:user])
    	redirect "/users/:id"
  	end

  	# DELETE: /users/5/delete
	delete "/users/:id/delete" do
		user = User.find(params[:id])
		user.destroy
		redirect "/logout"
	end

end
