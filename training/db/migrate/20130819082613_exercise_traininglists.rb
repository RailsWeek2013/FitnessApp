class ExerciseTraininglists < ActiveRecord::Migration
  def change
  	create_table :exercise_trainiglists, :id => false do |t|
  		t.integer :exercise_id
      	t.integer :traininglist_id

      t.timestamps
  	end
  end
end
