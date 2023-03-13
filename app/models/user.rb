class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :city, presence: true
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
has_many :pendings
has_many :frieends
# has_many :friends, through: :frieends
# has_many :friend_requests_sent, class_name: 'Frieend'
# has_many :requests_sent, through: :friend_requests_sent, source: :friend

  
end
