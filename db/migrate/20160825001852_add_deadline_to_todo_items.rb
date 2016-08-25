class AddDeadlineToTodoItems < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_items, :deadline, :text
  end
end
