class Profile < ApplicationRecord
  belongs_to :account, :inverse_of => :profile
end
