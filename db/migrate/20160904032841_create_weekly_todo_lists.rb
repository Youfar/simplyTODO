class CreateWeeklyTodoLists < ActiveRecord::Migration[5.0]
  def change
    create_table :weekly_todo_lists do |t|
      t.text :title

      t.timestamps
    end
  end
end
