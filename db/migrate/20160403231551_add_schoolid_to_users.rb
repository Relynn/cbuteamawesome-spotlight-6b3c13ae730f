class AddSchoolidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :schoolid, :integer
  end
end
