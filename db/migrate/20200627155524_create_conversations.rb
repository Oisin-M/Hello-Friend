class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.references :acc, null: false, references: :accounts
      t.references :proj, null: false, references: :projects

      t.timestamps
    end
  end
end
