class TodoItemsController < ApplicationController
  
  def index
    flash[:notice] = "ようこそ。本日は#{Date.today}です。"
  end

  def create
    @todo_list = TodoList.find(params[:todo_list_id])
    @todo_item = @todo_list.todo_items.create(todo_item_params)
    redirect_to todo_list_path(@todo_list)
  end

  def new
    @todo_item = @todo_list.todo_items.new
  end

  def destroy
    @todo_list = TodoList.find(params[:todo_list_id])
    @todo_item = @todo_list.todo_items.find(params[:id])
    @todo_item.destroy
    redirect_to todo_list_path(@todo_list)
  end

  def complete
    @todo_list = TodoList.find(params[:todo_list_id])
    @todo_item = @todo_list.todo_items.find(params[:id])
    @todo_item.update_attribute(:completed_at, Time.now) 
    redirect_to @todo_list, notice: "Todo item completed"
  end
 
  private
    def todo_item_params
      params.require(:todo_item).permit(:content, :difficulty, :deadline)
    end
end

