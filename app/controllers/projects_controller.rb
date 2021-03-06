class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new client_id: params[:client_id]
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to @project, notice: t(".success")
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: t(".success")
    else
      render :new
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path, notice: t(".success")
    else
      redirect_to @project, notice: t(".error")
    end
  end

  private

  def set_project
    @project = Project.find params[:id]
  end

  def project_params
    params.require(:project).permit(:name, :description, :url, :client_id)
  end
end
