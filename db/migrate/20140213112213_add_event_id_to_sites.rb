class AddEventIdToSites < ActiveRecord::Migration
  
  def change
  	change_table :sites do |t|
  		t.references :event
  	end
  end

end
