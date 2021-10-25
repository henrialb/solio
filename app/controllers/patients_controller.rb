class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show update destroy edit]

  def index
    @patients = Patient.all
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def new
    Patient.new
  end

  def edit
  end

  def show
  end

  def update
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def destroy
    @patient.destroy
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:full_name, :name, :dob, :is_active, :citizen_no, :nif_no, :health_no, :social_security_no, :clothes_tag, :sex)
  end
end
