class WeeklyTodoListsController < ApplicationController

  def index
    @weekly_todo_lists = WeeklyTodoList.all
  end

  def new
  end

  def create
    @weekly_todo_list = WeeklyTodoList.new(weekly_todo_list_params)
    @weekly_todo_list.save
    redirect_to @weekly_todo_list
  end

  def show
    @weekly_todo_lists = WeeklyTodoList.all
  	@weekly_todo_list = WeeklyTodoList.find(params[:id])
  end

  private

  def weekly_todo_list_params
    params.require(:weekly_todo_list).permit(:title)
  end
end
