class CreateExercisesTraininglistsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :exercises, :traininglists do |t|
      # t.index [:exercise_id, :traininglist_id]
      # t.index [:traininglist_id, :exercise_id]
    end
  end
end
