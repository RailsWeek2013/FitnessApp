class CreateUebungs < ActiveRecord::Migration
  def change
    create_table :uebungs do |t|
      t.string :uebung
      t.string :trainingsart
      t.integer :anzset
      t.integer :anzwdh
      t.text :beschreibung

      t.timestamps
    end
  end
end
