class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    redirect_to project_path(Project.first) if Project.first.present?
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    if Project.last.present?
      redirect_to project_path(Project.last)
    else
      redirect_to root_path
    end

  end

  def show
    @project = Project.find(params[:id])
    @projects = Project.all


    if params[:is_done]=='1'
      @tasks = @project.tasks.where(is_done: true)
    elsif params[:is_done]=='0'
      @tasks = @project.tasks.where(is_done: false)
    else
      @tasks = @project.tasks.all.order("is_done")
    end
  end

  private

  def project_params
    params.require(:project).permit(:title)
  end
end
