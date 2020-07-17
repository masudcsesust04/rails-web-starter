# frozen_string_literal: true

class TodosController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource
  check_authorization

  before_action :set_todo, only: %i[show edit update destroy]

  # GET /todos
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  def show; end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit; end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)
    @todo.creator = current_user

    if @todo.save
      redirect_to todos_url, notice: 'Todo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
      redirect_to @todo, notice: 'Todo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    redirect_to todos_url, notice: 'Todo was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_todo
    @todo = Todo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def todo_params
    params.require(:todo).permit(:title, :description, :published, :assignee_id)
  end
end
