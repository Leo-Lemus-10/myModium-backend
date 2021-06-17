class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :platform_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
