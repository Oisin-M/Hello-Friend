json.extract! message, :id, :body, :account_id, :conversation_id, :created_at, :updated_at
json.url message_url(message, format: :json)
