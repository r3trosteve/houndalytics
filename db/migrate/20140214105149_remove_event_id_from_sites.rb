class RemoveEventIdFromSites < ActiveRecord::Migration

	def up
		remove_column :sites, :event_id
	end

	def down
		add_reference :sites, :event
	end

end
