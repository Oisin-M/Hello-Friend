class Message < ApplicationRecord
  belongs_to :account
  belongs_to :conversation
end