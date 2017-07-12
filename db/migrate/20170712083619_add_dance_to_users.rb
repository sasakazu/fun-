class AddDanceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dance, :string
  end
end
