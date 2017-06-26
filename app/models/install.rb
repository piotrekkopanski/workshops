class Install < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessible :firstname,:lastname, :email, :password, :current_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
