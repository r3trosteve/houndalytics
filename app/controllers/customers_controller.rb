class CustomersController < ApplicationController
	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to @customer, notice: "customer created successfully"
		else
			flash[:error] = "Error creating customer, please try again"
			render :new
		end
	end

	def index
		@customers = Customer.all
		if current_user
			render :index
		else
			redirect_to root_url, notice: "ACCESS DENIED!!!111ONE"
		end
	end

	private
	def  customer_params
		params.require(:customer).permit(:name)
	end
end
