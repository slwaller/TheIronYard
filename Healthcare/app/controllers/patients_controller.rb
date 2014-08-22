class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_patient, only: 
         [:show, :edit, :update, :destroy, :discharge, :wait,
          :check, :xray, :scalpel, :charge]

# .page(params[:page]).per(10)
  def search_patients
    @patients = Patient.where("last_name LIKE ?", "%#{params[:q]}%")
    respond_to do |format|
      format.js
    end
  end


  def index
    @patients = Patient.all
    @hospital = Hospital.find params[:hospital_id] if params [:hospital_id] != 'search'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @patients = Patient.all.page(params[:page]).per(10)
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    @doctor = @patient.doctors.new
  end

  def new
    @patient = Patient.new
    @hospital = Hospital.find params[:hospital_id]
  end

  def create
    @hospital = Hospital.find params[:hospital_id]

    @patient = @hospital.patients.new(patient_params)
      respond_to do |format|
        if @patient.save
          format.html { redirect_to hospital_path(@hospital), notice: 'Patient Successfully Checked In!' }
        else
          format.html { render :new }
        end
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
    redirect_to hospital_patient_path
  end

  def check
    @hospital = Hospital.find params[:hospital_id]
    @patient.check!
    redirect_to hospital_patient_path
  end

  def wait
    @hospital = Hospital.find params[:hospital_id]
    @patient.wait!
    redirect_to hospital_patient_path
  end

  def xray
    @hospital = Hospital.find params[:hospital_id]
    @patient.xray!
    redirect_to hospital_patient_path
  end

  def scalpel
    @hospital = Hospital.find params[:hospital_id]
    @patient.scalpel!
    redirect_to hospital_patient_path
  end

  def charge
    @hospital = Hospital.find params[:hospital_id]
    @patient.charge!
    redirect_to hospital_patient_path
  end

  def create_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.find params[:id]
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def delete_doctor
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.find params[:id]
    @doctor = @patient.doctors.find params[:doctor_id]
    @doctor.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end
    

  private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :reason, :gender)
  end

  def doctor_params
      params.require(:doctor).permit(:dr_name)
  end

end
