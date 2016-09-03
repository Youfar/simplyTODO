class ChangeTextFormatInTodoItem < ActiveRecord::Migration[5.0]
  def up
    change_column :todo_items, :deadline, :time
  end

  def down
    change_column :todo_items, :deadline, :text
  end
end
