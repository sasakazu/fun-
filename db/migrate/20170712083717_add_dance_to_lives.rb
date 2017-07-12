class AddDanceToLives < ActiveRecord::Migration[5.0]
  def change
    add_column :lives, :dance, :string
  end
end
