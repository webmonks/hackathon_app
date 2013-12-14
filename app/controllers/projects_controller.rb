class ProjectsController < ApplicationController
  before_filter :check_password, except: [:vote, :index]

  def index
    @projects = Project.all.shuffle
    if params[:token_name]
      token = Token.where(name: params[:token_name]).first
      @token = token if token.present? && !token.used?
    end
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
        session[:has_voted] = true
        flash[:notice]='Santa Claus has confirmed your vote :) !'
      end
      redirect_to scores_path
  end

  private

    def set_event
      @project = Project.new
    end

    def project_params
      params.require(:project).permit(:name, :description )
    end
end

