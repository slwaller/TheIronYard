class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @users = User.all
    authorize @users, :index?
  end

  def show
    @cohort = Cohort.all
    @user = User.find params[:id]
    authorize @user, :show?
  end

  def new
    @cohort = Cohort.all
    @user = User.new
    authorize @user, :create?
  end

  def create
    @cohort = Cohort.all
    @user = User.create user_params
    authorize @user, :create?
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
    authorize @user, :edit?
  end

  def update
    @user = User.find params[:id]
    authorize @user, :edit?
    @user.update_attributes user_params
    redirect_to users_path
  end

  def destroy
    @user = User.find params[:id]
    authorize @user, :destroy?
    @user.delete
    redirect_to users_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name)
  end
  
end
