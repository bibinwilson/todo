class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :todo_item
      t.string :status
      t.string :owner

      t.timestamps null: false
    end
  end
end
