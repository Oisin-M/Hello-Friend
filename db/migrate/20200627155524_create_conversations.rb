class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|

      t.integer :acc_id
      t.integer :proj_id

      t.timestamps
    end
  end
end
