class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #Accounts are able to have multiple images
  has_many_attached :images, dependent: :destroy
  has_many :message, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :projects, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :email, :password, :username, :first_name, :last_name, presence: true, on: :create
  validates_uniqueness_of :username
end
