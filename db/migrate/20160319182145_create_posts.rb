class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :post_no
      t.string :title
      t.text :body
      t.integer :views
      t.integer :likes
      t.integer :dislikes
      t.integer :comments

      t.timestamps null: false
    end
  end
end
