class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #Accounts are able to have multiple images
  has_many_attached :images
  has_many :message

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
