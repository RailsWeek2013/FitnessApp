class AddUserIdToUebungs < ActiveRecord::Migration
  def change
    add_column :uebungs, :user_id, :integer
  end
end
