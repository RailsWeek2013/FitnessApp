class User < ActiveRecord::Base
	has_many :traininglists
	has_many :exercises
	has_one :user_datum
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # attr_accessible :name, :email, :password, :password_confirmation, :episode_ids
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
