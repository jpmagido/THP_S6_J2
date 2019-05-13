class InvitationsController < ApplicationController
before_action :authenticate_user!
	def new
		@invit = Invitation.new
		
	end

	def create
	Invitation.create(
			user_id: current_user.id, 
			stripe_customer_id: params[:invitation][:stripe_customer_id], 
			event_id: Event.find_by(location:params[:invitation][:event_id]).id)
		puts "$$"*60
		puts params
		puts "$$"*60
	redirect_to new_charge_path
	end


	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
	
end
