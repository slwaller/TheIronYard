class LocationsController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @locations = Location.all
    authorize @locations, :index?
  end

  def show
    @location = Location.find params[:id]
    @cohorts = @location.cohorts
    authorize @location, :show?
  end

  def new
    @location = Location.new
    authorize @location, :create?
  end

  def create
    @location = Location.create location_params
    authorize @location, :create?
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully added!' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @location = Location.find params[:id]
    authorize @location, :edit?
  end

  def update
    @location = Location.find params[:id]
    authorize @location, :edit?
    @location.update_attributes location_params
    redirect_to locations_path
  end

  def destroy
    @location = Location.find params[:id]
    authorize @location, :destroy?
    @location.delete
    redirect_to locations_path
  end
  
  private
  def location_params
    params.require(:location).permit(:city, :description)
  end

end
