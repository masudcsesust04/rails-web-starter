class AddPasswordChangedAtToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_changed_at, :datetime, after: :locked_at
  end
end
