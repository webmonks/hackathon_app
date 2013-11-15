class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html {redirect_to root_path, notice: 'New project was created.' }
      else
    end
  end
end

  private

    def set_event
      @project = Project.new
    end

    def project_params
      params.require(:project).permit(:name, :description )
    end
end

