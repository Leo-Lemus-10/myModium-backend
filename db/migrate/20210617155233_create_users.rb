class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :prof_pic
      t.string :bio
      t.string :liked_media

      t.timestamps
    end
  end
end
