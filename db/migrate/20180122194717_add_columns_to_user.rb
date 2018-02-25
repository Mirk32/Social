class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar_path, :string
    add_column :users, :coins, :float
    add_column :users, :description, :text
    add_column :users, :phone_number, :string
    add_column :users, :state_number, :integer
    add_column :users, :room_number, :integer
    add_column :users, :specializations, :string
  end
end
