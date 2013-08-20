class Traininglist < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :exercises
	accepts_nested_attributes_for :exercises, allow_destroy: true


	validates :name, presence: true
end
