class AddUserIdToDances < ActiveRecord::Migration[5.0]
  def change
    add_column :dances, :user_id, :integer
  end
end
