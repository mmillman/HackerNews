class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id, :null => false
      t.text :body
      t.integer :post_id, :null => false

      t.timestamps
    end

    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
