class CreateUserUebungs < ActiveRecord::Migration
  def change
    create_table :user_uebungs do |t|

      t.timestamps
    end
  end
end
