class Conversation < ApplicationRecord

  has_many :messages, dependent: :destroy
  accepts_nested_attributes_for :messages, allow_destroy: true

  validates_presence_of :acc_id, :proj_id
  validates_uniqueness_of :acc_id, :proj_id

  scope :between, -> (sender_id, recipient_id) do
    where("(sender_id = ? AND recipient_id = ?) OR (sender_id = ? AND recipient_id = ?)", sender_id, recipient_id, recipient_id, sender_id)
  end
  
end
