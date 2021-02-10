class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :description
      t.boolean :published

      t.timestamps
    end
  end
end
