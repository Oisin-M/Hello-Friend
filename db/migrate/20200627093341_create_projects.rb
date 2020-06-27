class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.text :description
      t.text :skills
      t.text :category

      t.timestamps
    end
  end
end
