class EventsController < ApplicationController

	before_action :find_customer

	def index
		@events = @customer.events
		# @event = @customer.events.find(params[:event_id])

		if params[:start_date] && params[:end_date]
			@events = @customer.events.where("date(events.created_at) >= ? AND date(events.created_at) <= ?", params[:start_date], params[:end_date] )
		end
	end

	def create
		SiteFinder.new(params[:event], request.referer, @customer).create

		render json: {status: "OK"}
	end

	private

	def find_customer
		@customer = Customer.find(params[:customer_id])
	end

end