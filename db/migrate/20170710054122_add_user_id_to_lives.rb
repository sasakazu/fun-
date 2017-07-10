class AddUserIdToLives < ActiveRecord::Migration[5.0]
  def change
    add_column :lives, :user_id, :integer
  end
end
