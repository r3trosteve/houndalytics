class EventsController < ApplicationController

	before_action :find_customer

	def index
		@events = @customer.events
		# @event = @customer.events.find(params[:event_id])

		if params[:start_date] && params[:end_date]
			@events = @customer.events.where("date(created_at) >= ? AND date(created_at) <= ?", params[:start_date], params[:end_date] )
		end
	end

	def create
		@customer.events.create

		render json: {status: "OK"}
	end

	private

	def find_customer
		@customer = Customer.find(params[:customer_id])
	end

end