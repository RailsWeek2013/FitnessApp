class Exercise < ActiveRecord::Base
	has_and_belongs_to_many :traininglists
	belongs_to :user 

	validates :name, presence: true
	validates :muskelgruppe, presence: true
	validates :anzwdh, presence: true
	validates :anzset, presence: true
	
end
