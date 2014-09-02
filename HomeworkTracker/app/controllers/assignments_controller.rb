class AssignmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @assignments = Assignment.all
    # authorize @assignment, :index?
  end

  def show
    @assignment = Assignment.find params[:id]
    authorize @assignment, :show?
  end

  def new
    @assignment = Assignment.new
    authorize @assignment, :new?
  end

  def create
    @assignment = Assignment.create assignment_params
    authorize @assignment, :create?
    redirect_to assignment_path(@assignment)
  end

  def edit
    @assignment = Assignment.find params[:id]
    authorize @assignment, :edit?
  end

  def update
    @assignment = Assignment.find params[:id]
    @assignment.update_attributes assignment_params
    authorize @assignment, :update?
    redirect_to assignments_path
  end

  def destroy
    @assignment = Assignment.find params[:id]
    @assignment.delete
    authorize @assignment, :destroy?
    redirect_to assignments_path
  end

  private
  def assignment_params
    params.require(:assignment).permit(:name, :description)
  end
end
