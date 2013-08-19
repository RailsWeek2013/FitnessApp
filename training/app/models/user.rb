class User < ActiveRecord::Base
	has_many :uebungs
	#has_many :user_uebungs
	#has_many :uebungs, :through => :user_uebungs
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # attr_accessible :name, :email, :password, :password_confirmation, :episode_ids
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
