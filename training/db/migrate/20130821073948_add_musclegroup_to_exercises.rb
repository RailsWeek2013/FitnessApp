class AddMusclegroupToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :muskelgruppe, :string
  end
end
