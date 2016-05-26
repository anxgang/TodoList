class TasksController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to project_path(@project)
    else
      redirect_to :back
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to project_path(@project)
    else
      redirect_to :back
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to :back
  end

  # 切換完成與否
  def updone
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])

    @task.is_done = @task.is_done ? false : true
    @task.save

    redirect_to :back
  end

  private
  def task_params
    params.require(:task).permit(:content)
  end
end
