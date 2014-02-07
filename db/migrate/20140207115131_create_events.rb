class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :url
      #json	
      t.references :customer, index: true	

      t.timestamps
    end
  end
end
