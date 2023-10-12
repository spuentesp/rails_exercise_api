class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :email, :string
  end
end
