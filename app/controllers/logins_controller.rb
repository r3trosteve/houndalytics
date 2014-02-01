class LoginsController < ApplicationController

	def new
	end

	def create
		# login here SOMEHOW
		# redirect_to sites_path
		redirect_to customers_path
	end

end