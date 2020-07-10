json.extract! conversation, :id, :account_id, :project_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
