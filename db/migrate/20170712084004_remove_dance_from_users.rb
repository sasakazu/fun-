class RemoveDanceFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :dance, :string
  end
end
