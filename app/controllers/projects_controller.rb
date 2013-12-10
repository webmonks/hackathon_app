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
      if @project.save
        redirect_to root_path, notice: 'New project was created.'
      else
        render action: 'new'
      end
  end

  def vote
    @project = Project.find(params[:id])
    @token = Token.where(name: params[:token_name]).first
      if @token.present? && @project.vote(@token)
         binding.pry
        session[:has_voted] = true
        flash[:notice]='Santa Claus has confirmed your vote :) !'
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

