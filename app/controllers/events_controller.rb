class EventsController < ApplicationController

	def index
		@customer = Customer.find(params[:customer_id])
		@events = @customer.events
		# @event = @customer.events.find(params[:event_id])

		if params[:start_date] && params[:end_date]
			@events = @customer.events.where("date(created_at) >= ? AND date(created_at) <= ?", params[:start_date], params[:end_date] )
		end
	end
end