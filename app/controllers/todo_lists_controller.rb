# -*- coding: utf-8 -*-
class TodoListsController < ApplicationController

  def index
    flash[:notice] = "ようこそ。本日は#{Date.today}です。現在は#{Time.now.strftime("%H:%M")}です。"
  	@todo_lists = TodoList.all
  end

  def create
    @todo_list = TodoList.new(todo_list_params)
 
    @todo_list.save
    redirect_to @todo_list
  end

  def update
    @todo_list = TodoList.find(params[:id])
 
    if @todo_list.update(todo_list_params)
      redirect_to @todo_list
    else
      render 'edit'
    end
  end

  def destroy
  	@todo_list = TodoList.find(params[:id])
  	@todo_list.destroy

  	redirect_to todo_lists_path
  end

  def edit
  	@todo_list = TodoList.find(params[:id])
  end

  def show
  	@todo_list = TodoList.find(params[:id])
  end

  private

  def todo_list_params
    params.require(:todo_list).permit(:title)
  end


end
