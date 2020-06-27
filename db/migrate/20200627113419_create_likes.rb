class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.integer :project_id
      t.boolean :boolean

      t.timestamps
    end
  end
end
