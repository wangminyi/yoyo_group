class AddUsersAttrubutes < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :open_id, :string
    add_column :users, :nickname, :string
    add_column :users, :gender, :string
    add_column :users, :avatar, :string
    add_column :users, :description, :string

    add_index :users, :open_id
  end
end
