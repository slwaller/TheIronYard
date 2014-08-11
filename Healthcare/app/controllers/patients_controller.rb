class PatientsController < ApplicationController

  before_action :find_patient, only: 
         [:show, :edit, :update, :destroy, :discharge, :wait,
          :check, :xray, :scalpel, :charge]

  def index
    @patients = Patient.all
    @hospital = Hospital.find params[:hospital_id]
  end

  def show
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
  end

  def new
    @patient = Patient.new
    @hospital = Hospital.find params[:hospital_id]
  end

  def create
    @hospital = Hospital.find params[:hospital_id]

    @patient = @hospital.patients.new(patient_params)
    if @patient.save == true
      redirect_to hospitals_path
    else
      render :new
    end
  end

  def edit
    @hospital = Hospital.find params[:hospital_id]
  end

  def update
    @hospital = Hospital.find params[:hospital_id]
    if @patient.update_attributes patient_params
      redirect_to hospitals_path  
    else
      render :edit
    end
  end

  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient.delete
    redirect_to hospitals_path
  end

  def discharge
    @hospital = Hospital.find params[:hospital_id]
    @patient.discharge!
    redirect_to hospitals_path
  end

  def check
    @hospital = Hospital.find params[:hospital_id]
    @patient.check!
    redirect_to hospitals_path
  end

  def wait
    @hospital = Hospital.find params[:hospital_id]
    @patient.wait!
    redirect_to hospitals_path
  end

  def xray
    @hospital = Hospital.find params[:hospital_id]
    @patient.xray!
    redirect_to hospitals_path
  end

  def scalpel
    @hospital = Hospital.find params[:hospital_id]
    @patient.scalpel!
    redirect_to hospitals_path
  end

  def charge
    @hospital = Hospital.find params[:hospital_id]
    @patient.charge!
    redirect_to hospitals_path
  end

  private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :reason, :gender)
  end

end
