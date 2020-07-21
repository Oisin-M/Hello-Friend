class AddSkillsToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :skills, :text
  end
end
