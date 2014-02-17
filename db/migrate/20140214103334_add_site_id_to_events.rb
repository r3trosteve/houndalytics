class AddSiteIdToEvents < ActiveRecord::Migration

	def up
		add_reference :events, :site, index: true
		remove_column :events, :customer_id
	end

	def down
		remove_column :events, :site_id
		add_reference :events, :customer, index: true
	end

#  def change
#  	change_table :events do |t|
#  		t.references :site
#  	end
#  	reversible do |dir|
#  		change_table :events do |t|
#  			dir.up {t.remove_column :customer_id}
#  			dir.down {t.add_column :customer_id, :integer}
#  		end
#  	end
#  end
end
