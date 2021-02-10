class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string  :summary
      t.text    :description
      t.boolean :published
      t.integer :creator_id

      t.timestamps
    end
  end
end
