class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		u = User.create(first_name: params[:user][:first_name], 
			last_name: params[:user][:last_name],
			email: params[:user][:email],
			cb: params[:user][:cb],
			password: params[:user][:password]
			)
		if u.errors.full_messages == []
  		redirect_to user_path(User.last.id)
  	end
	end


	def edit
		@user = User.find(params[:id])
	end

	def update
	@user = User.find(params[:id])
	@user.update(first_name: params[:user][:first_name],
		last_name: params[:user][:last_name],
		email: params[:user][:email],
		cb: params[:user][:cb],
		password: params[:user][:password]
		)

	end

	def destroy
		
	end

	def show

		@user_names = User.find(params[:id]).first_name + " " + User.find(params[:id]).last_name
		@user_email = User.find(params[:id]).email
		@user_cb = User.find(params[:id]).cb
		@user_date = User.find(params[:id]).created_at
		@user_nbr = params[:id]
		
	end

end
