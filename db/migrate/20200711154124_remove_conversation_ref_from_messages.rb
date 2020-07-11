class RemoveConversationRefFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :conversation, null: false, foreign_key: true
  end
end
