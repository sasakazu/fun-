class CreateLives < ActiveRecord::Migration[5.0]
  def change
    create_table :lives do |t|
      t.string :title
      t.string :live

      t.timestamps
    end
  end
end
