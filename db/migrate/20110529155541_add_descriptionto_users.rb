class AddDescriptiontoUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :description, :text
    change_column :microposts, :content, :text
  end

  def self.down
    remove_column :users, :description
    change_column :microposts, :content, :string
  end
end
