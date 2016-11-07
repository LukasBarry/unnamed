class ProjectsController < ApplicationController
  respond_to :html

  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    @project = Project.find(params[:id])
    respond_with @project
  end

  def new
    @project = Project.new
    respond_with @project
  end

  def create
    @project = Project.where(project_params).first_or_initialize
    @project.save
    respond_with @project
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
