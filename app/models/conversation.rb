class Conversation < ApplicationRecord

  has_many :messages, dependent: :destroy
  accepts_nested_attributes_for :messages, allow_destroy: true

  validates_presence_of :acc_id, :proj_id



end
