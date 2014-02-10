class EventsController < ApplicationController

	def index
		@customer = Customer.find(params[:customer_id])
		@events = @customer.events
		# @event = @customer.events.find(params[:event_id])
	end
end
