class AddLoginFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string, null: false, default: ""
    add_column :users, :password_digest, :string, null: false, default: ""
  end
end
