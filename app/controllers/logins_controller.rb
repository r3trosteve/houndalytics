class LoginsController < ApplicationController

	def new
	end

	def create
		# check valid pw
		# fields will be: params[:email] and params[:password]
		user = User.find_by(email: params[:email]).try(:authenticate, params[:password])

		if user
			session[:user_id] = user.id
			redirect_to customers_path
		end
	end

end