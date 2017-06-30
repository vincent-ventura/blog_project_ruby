class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@users = User.find(params[:id])
	end

	def users_params
		params.require(:user).permit(:firstname, :lastname, :age, :image)
	end

	def new
		@users = User.new
	end

	def create
		@users = User.new(users_params)
		
		if @users.save
			redirect_to :action => 'index'
		else
			render :action => 'new'
		end
	end

	def edit
		@users = User.find(params[:id])
	end

	def update
		@users = User.find(params[:id])
	
		if @users.update_attributes(users_params)
			redirect_to :action => 'show', :id => @users
		else
			render :action => 'edit'
		end
	end

	def destroy
	  @users = User.find(params[:id])
	  @users.destroy
	  redirect_to :action => 'index'
	end
end
