class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string  :title
      t.text    :description
      t.boolean :published
      t.integer :creator_id
      t.integer :assignee_id

      t.timestamps
    end
  end
end
