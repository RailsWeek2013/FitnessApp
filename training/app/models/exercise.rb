class Exercise < ActiveRecord::Base
	has_and_belongs_to_many :traininglists
	belongs_to :user 

	validates :name, presence: true
end
