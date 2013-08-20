class CreateUserExercises < ActiveRecord::Migration
  def change
    create_table :user_exercises do |t|

      t.timestamps
    end
  end
end
