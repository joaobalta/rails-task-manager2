class TasksController < ApplicationController
  def index
    @tasks = Task.all # Array com todas as tarefas
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    # Cria uma nova tarefa
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@tasks) # Manda para o /tasks
  end

  def edit
    set_task # Dá para substituir pelo before_action
  end

  def update
    @task = Task.find(params[:id]) # 100% = ao set task
    @task.update(task_params)
    # no need for app/views/tasks/update.html.erb
    redirect_to task_path(@task) # Manda para o /task/ID
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@tasks) # Manda p/ '/tasks' |taskS_path(@tasks)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
