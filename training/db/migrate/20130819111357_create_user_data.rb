class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.string :firstname
      t.string :lastname
      t.string :sex
      t.float :weight
      t.float :bodysize
      t.date :birthday

      t.timestamps
    end
  end
end
