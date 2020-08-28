class AddSkillstoProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :skills, :text
    add_column :projects, :category, :text
  end
end
