class Conversation < ApplicationRecord

  validates_presence_of :account_id, :project_id
  validates_uniqueness_of :account_id, :project_id
end
