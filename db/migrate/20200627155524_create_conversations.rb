class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|

      t.integer :account_ID
      t.integer :project_id

      t.timestamps
    end
  end
end
