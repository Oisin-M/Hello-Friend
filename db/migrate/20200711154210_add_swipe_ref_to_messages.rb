class AddSwipeRefToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :swipe, null: false, foreign_key: true
  end
end
