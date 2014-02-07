class User < ActiveRecord::Base
	has_secure_password

	def current_user

	end

end
