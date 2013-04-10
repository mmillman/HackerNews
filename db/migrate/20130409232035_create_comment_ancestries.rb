class CreateCommentAncestries < ActiveRecord::Migration
  def change
    create_table :comment_ancestries do |t|
      t.integer :descendent_id
      t.integer :ancestor_id

      t.timestamps
    end

    add_index :comment_ancestries, :descendent_id
    add_index :comment_ancestries, :ancestor_id
  end
end
