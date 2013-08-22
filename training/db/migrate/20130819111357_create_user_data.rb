class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.string :firstname
      t.string :lastname
      t.string :sex
      t.float :weight, default: 0
      t.float :bodysize, default: 0
      t.date :birthday

      t.timestamps
    end
  end
end
