class UsersController < ApplicationController

	# GET /users
	def index
   		@users = User.all
  	end

  	 # GET /users/1
	def show
    	@user = User.find_by_email(params[:email]) 

    	if @user && @user.valid_password?(params[:password])
       		render :show
   		else
            render json: { errors: @user.errors.full_messages, status: :unprocessable_entity},
    end
end
