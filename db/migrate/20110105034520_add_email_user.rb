class AddEmailUser < ActiveRecord::Migration
  def self.up
    add_column :users, :email, :string, :limit => 120
  end

  def self.down
    remove_column :users, :email
  end
end
