class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.text :body
      t.string :title, :null => false
      t.integer :author_id, :null => false

      t.timestamps
    end

    add_index :posts, :title
    add_index :posts, :author_id
  end
end
