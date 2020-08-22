class Profile < ApplicationRecord
  belongs_to :account, :inverse_of => :profile

  has_one_attached :profile_pic
end
