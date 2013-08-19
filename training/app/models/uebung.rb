class Uebung < ActiveRecord::Base
	#belongs_to :user
	has_many :users
	#has_many :user_uebungs
	#has_many :users, :through => :user_uebungs

	validates :uebung, presence: true
end
