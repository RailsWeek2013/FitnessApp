class ExerciseTraininglist < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :traininglist
end
