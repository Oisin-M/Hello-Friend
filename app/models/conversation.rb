class Conversation < ApplicationRecord

  validates_presence_of :acc_id, :proj_id
  validates_uniqueness_of :acc_id, :proj_id
end
