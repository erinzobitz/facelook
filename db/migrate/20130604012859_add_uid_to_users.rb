class AddUidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :email, :string
    add_column :users, :auth_token, :string
  end
end
