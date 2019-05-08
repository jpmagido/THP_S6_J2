class EventsController < ApplicationController
before_action :authenticate_user!
	def index
		@events = Event.all

		
	end
	def new
		@event = Event.new
	end

	def create

		e = Event.create(title: params[:event][:title],
			description: params[:event][:description],
			start_date: params[:event][:start_date],
			duration: params[:event][:duration],
			price: params[:event][:price], 
			location: params[:event][:location],
			user_id: current_user.id
		)
  		redirect_to root_path
	end


	def edit
		@event_current = Event.find(params[:id])

	end

	def update
	@event_current = Event.find(params[:id])
	@event_current.update(title: params[:event][:title],
			description: params[:event][:description],
			start_date: params[:event][:start_date],
			duration: params[:event][:duration],
			price: params[:event][:price], 
			location: params[:event][:location]
		)
	redirect_to event_path(params[:id])
	end

	def show

	@event_title = Event.find(params[:id]).title
	@event_description = Event.find(params[:id]).description
	@event_date = Event.find(params[:id]).start_date
	@event_duration = Event.find(params[:id]).duration
	@event_price = Event.find(params[:id]).price
	@event_id = Event.find(params[:id]).id
	@event_user_id = Event.find(params[:id]).user_id
	@event_location = Event.find(params[:id]).location
	end

	def destroy
		
	end
end
