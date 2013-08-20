class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :trainingsart
      t.integer :anzset
      t.integer :anzwdh
      t.text :beschreibung

      t.timestamps
    end
  end
end
