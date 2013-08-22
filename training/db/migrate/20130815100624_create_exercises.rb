class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name ,      :unique => true
      t.string :trainingsart
      t.integer :anzset, default: 3
      t.integer :anzwdh, default: 12
      t.text :beschreibung

      t.timestamps
    end
  end
end
