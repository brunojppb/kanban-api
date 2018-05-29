class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :content
      t.integer :state

      t.timestamps
    end
  end
end
