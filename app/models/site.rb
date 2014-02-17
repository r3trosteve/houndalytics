class Site < ActiveRecord::Base

  belongs_to :customer
  has_many :events

end
