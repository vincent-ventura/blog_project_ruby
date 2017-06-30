class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tilte
      t.data :publishDate
      t.text :hat
      t.text :content
      t.string :picture

      t.timestamps null: false
    end
  end
end
