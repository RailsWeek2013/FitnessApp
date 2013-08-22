class User < ActiveRecord::Base
	has_many :traininglists
	has_many :exercises
	has_one :user_datum

  #before_create :test

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # attr_accessible :name, :email, :password, :password_confirmation, :episode_ids
  #attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  #attr_accessor :login
  #attr_accessible :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #:authentication_keys => [:login]

   #validates :username,
  #:uniqueness => {
    #:case_sensitive => false
  #}

  #def test
   # name=[]
   # 10.times do name << ('a'..'z').to_a.shuffle[0] end
    #self.username = name.join
  #end
end
