class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :city, presence: true
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :frieends


  
end
