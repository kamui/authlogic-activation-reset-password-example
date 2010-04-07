class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      # t.string :username, :null => false
      t.string :email, :null => false
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.string :perishable_token, :null => false
      t.boolean :active, :default => false, :null => false
      t.timestamps
    end
    
    add_index :users, :email
    add_index :users, :persistence_token
  end

  def self.down
    drop_table :users
  end
end
