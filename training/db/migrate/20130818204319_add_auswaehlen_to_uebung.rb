class AddAuswaehlenToUebung < ActiveRecord::Migration
  def change
    add_column :uebungs, :auswaehlen, :boolean
  end
end
