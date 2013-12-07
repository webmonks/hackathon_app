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
    @token = Token.where(name: params[:token_name]).first
    binding.pry
      if @token.present? && @project.vote(@token)
        session[:has_voted] = true
        flash[:notice]='ljkj'
      end

      redirect_to root_path
  end

  private

    def set_event
      @project = Project.new
    end

    def project_params
      params.require(:project).permit(:name, :description )
    end
end

