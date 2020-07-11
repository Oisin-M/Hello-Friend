class CreateSwipes < ActiveRecord::Migration[6.0]
  def change
    create_table :swipes do |t|
      t.references :account, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.boolean :liked

      t.timestamps
    end
  end
end
