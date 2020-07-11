class Swipe < ApplicationRecord
  belongs_to :account
  belongs_to :project

  has_many :messages
end
