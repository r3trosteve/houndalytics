class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :hostname
      t.references :customer, index: true

      t.timestamps
    end
  end
end
