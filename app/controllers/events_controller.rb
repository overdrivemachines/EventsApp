class EventsController < ApplicationController
	# before_action :authenticate_user!
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	respond_to :html

	def index
		@events = Event.order(:fromDate)
		@events_at_date = Hash.new
		@future_events_at_date = Hash.new
		@past_events_at_date = Hash.new

		for i in 0..(@events.count - 1) do
			if @events_at_date[@events[i].fromDate] == nil
				@events_at_date[@events[i].fromDate] = Array.new
				j = 0
			end
			@events_at_date[@events[i].fromDate][j] = @events[i]
			j = j + 1 
			logger.info "This is date: #{@events[i].fromDate}"
		end

		@events_at_date.each do |date, events|
			logger.info "date: #{date} # of events: #{events.count} "
		end

		today = Date.today
		@events_at_date.each do |date, events|
			if date >= today
				@future_events_at_date[date] = events
				logger.info "Future date: #{date} # of events: #{events.count} "
			else
				@past_events_at_date[date] = events
				logger.info "Past date: #{date} # of events: #{events.count} "
			end
		end		

		# @events.each_with_index { |e, i|
		# 	@events_at_date[e.fromDate] = Array.new
		# 	@events_at_date[e.fromDate].push(e)
		# }
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
