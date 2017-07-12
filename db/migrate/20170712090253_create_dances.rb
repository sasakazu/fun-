class CreateDances < ActiveRecord::Migration[5.0]
  def change
    create_table :dances do |t|

      t.timestamps
    end
  end
end
