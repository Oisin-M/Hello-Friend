class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :account
  belongs_to :project

  validates_presence_of :body, :account_id
end
