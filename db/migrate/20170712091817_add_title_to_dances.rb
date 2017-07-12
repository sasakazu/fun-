class AddTitleToDances < ActiveRecord::Migration[5.0]
  def change
    add_column :dances, :title, :string
  end
end
