class Customer < ActiveRecord::Base
	has_many :sites, dependent: :destroy
	has_many :events, through: :sites
end
