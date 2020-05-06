class AddColumnNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, limit: 16, after: :id
  end
end
