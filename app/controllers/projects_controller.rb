class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def scores
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
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    @project = Project.find(params[:id])
    @token = Token.where(name: params[:token_name])
    respond_to do |format|
      if @token.blank?
        return @project.vote @token
        format.html {redirect_to root_path, notice: 'Hell yeah.' }
      else
        render 'index', notice: 'Hell no'
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

