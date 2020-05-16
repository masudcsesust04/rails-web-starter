class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.bigint :user_id
      t.bigint :role_id

      t.timestamps
    end
  end
end
