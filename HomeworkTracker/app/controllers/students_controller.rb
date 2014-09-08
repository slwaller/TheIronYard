class StudentsController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @students = Student.all
    authorize @students, :index?
  end

  def show
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @cohort = Cohort.all
    @student = Student.find params[:id]
    authorize @student, :show?
  end

  def new
    @student = Student.new
    @cohort = Cohort.find params[:cohort_id]
    @location = Location.find params[:location_id]
    authorize @student, :create?
  end

  def create
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @student = @cohort.students.new(student_params)
    authorize @student, :create?
    respond_to do |format|
    if @student.save
        format.html { redirect_to location_cohort_student_path(@location, @cohort, @student), notice: 'Student Successfully Signed Up!' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @student = Student.find params[:id]
    authorize @student, :edit?
  end

  def update
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @student = Student.find params[:id]
    authorize @student, :edit?
    @student.update_attributes student_params
    redirect_to location_cohort_student_path
  end

  def destroy
    @location = Location.find params[:location_id]
    @cohort = Cohort.find params[:cohort_id]
    @student = Student.find params[:id]
    authorize @student, :destroy?
    @student.delete
    redirect_to location_cohort_students_path
  end
  
  private
  
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
  
end
