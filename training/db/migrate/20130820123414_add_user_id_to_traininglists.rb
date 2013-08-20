class AddUserIdToTraininglists < ActiveRecord::Migration
  def change
    add_column :traininglists, :user_id, :integer
  end
end
