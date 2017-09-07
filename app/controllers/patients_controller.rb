class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  
  before_filter :beforeFilter

  def beforeFilter
     $strt = params[:strt].present? ? params[:strt] : DateTime.now - 24.hours
     $endd = params[:endd].present? ? params[:endd] : DateTime.now
  end  
  
  
  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])
    @pulses = Pulse.where(patient_id: @patient.id)
    @temperatures = Temperature.where(patient_id: @patient.id)
    @blood_pressures = BloodPressure.where(patient_id: @patient.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json do
        render json: {
          id: @patient.id,
          firstName: @patient.firstName,
          surname: @patient.surname,
          gender: @patient.gender,
          pulses: @pulses.as_json(:only => [ :id, :pulse, :dt ]),
          temperatures: @temperatures.as_json(:only => [ :id, :temperature, :dt ]),
          blood_pressures: @blood_pressures.as_json(:only => [ :id, :systolic, :diastolic, :dt ])
        }.to_json
      end
    end
  end
  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    # @strt = params[:strt]
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:title, :firstName, :surname, :gender, :bloodgroup_id)
    end
end
