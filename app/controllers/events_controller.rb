class EventsController < ApplicationController
	# before_action :authenticate_user!
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	respond_to :html

	def index
		@events = Event.all
		@events_at_date = Hash.new

		for i in 0..(@events.count - 1) do
			@events_at_date[@events[i].fromDate] = Array.new
			@events_at_date[@events[i].fromDate] << @events[i]
			logger.info "This is date: #{@events[i].fromDate}"
			for j in (i + 1)..(@events.count - 1) do
				if j <= (@events.count - 1)
					if @events[j].fromDate == @events[i].fromDate
						@events_at_date[@events[i].fromDate] << @events[j]
					end
				end				
			end
		end

		@events.each_with_index { |e, i|
			@events_at_date[e.fromDate] = Array.new
			@events_at_date[e.fromDate].push(e)
		}
		respond_with(@events)
	end

	def show
		respond_with(@event)
	end

	def new
		@event = Event.new
		respond_with(@event)
	end

	def edit
	end

	def create
		@event = Event.new(event_params)
		@event.save
		respond_with(@event)
	end

	def update
		@event.update(event_params)
		respond_with(@event)
	end

	def destroy
		@event.destroy
		respond_with(@event)
	end

	private
	def set_event
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit(:title, :fromDate, :fromTime, :untilTime, :untilDate, :address1, :address2, :zip, :description, :url, :email, :phone, :user_id)
	end
end
