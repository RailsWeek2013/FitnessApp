class CreateTraininglists < ActiveRecord::Migration
  def change
    create_table :traininglists do |t|
      t.string :name
      t.string :trainingsart
      t.string :anzset
      t.integer :anzwdh
      t.text :beschreibung

      t.timestamps
    end
  end
end
