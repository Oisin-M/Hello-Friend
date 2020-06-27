class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :account
      t.text :description
      t.text :skills
      t.string :category
      t.timestamps
    end
  end
end
