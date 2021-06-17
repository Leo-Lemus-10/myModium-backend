class CreateMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :media do |t|
      t.string :description
      t.string :picture
      t.string :name

      t.timestamps
    end
  end
end
