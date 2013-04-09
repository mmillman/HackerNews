class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :email, :null => false
      t.integer :karma
      t.string :password, :null => false
      t.string :remember_token

      t.timestamps
    end

    add_index :users, :password
    add_index :users, :email
    add_index :users, :username
    add_index :users, :remember_token
  end
end
