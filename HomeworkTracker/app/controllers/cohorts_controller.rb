class CohortsController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    # @location - Location.find params[:location_id]
    authorize @cohort, :index?
  end

  def show
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:id]
    
    authorize @cohort, :show?
  end

  def new
    @location = Location.find params[:location_id]
    @cohort = Cohort.new
    authorize @cohort, :new?
  end

  def edit
    @location = Location.find params[:location_id]
    authorize @cohort, :edit?
  end

  def create
    @location = Location.find params[:location_id]
    @cohort = @location.cohorts.new(cohort_params)
    authorize @cohort, :create?
    respond_to do |format|
        if @cohort.save
          format.html { redirect_to location_path(@location), notice: 'Cohort was successfully added!' }
        else
          format.html { render :new }
        end
      end
    end

  def update
    @location = Location.find params[:location_id]
    authorize @cohort, :update?
      if @cohort.update(cohort_params)
        redirect_to locations_path  
      else
        render :edit
      end
    end

  def destroy
    @location = Location.find params[:location_id]
    @cohort.destroy
    authorize @cohort, :destroy?
    respond_to do |format|
      format.html { redirect_to locations_path(@location), notice: 'Cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_cohort
      @cohort = Cohort.find params[:id]
    end

    def cohort_params
      params.require(:cohort).permit(:course)
    end
end
