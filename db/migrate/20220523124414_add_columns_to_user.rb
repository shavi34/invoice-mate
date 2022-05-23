class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :country, :string
    add_column :users, :mobile, :integer
  end
end
