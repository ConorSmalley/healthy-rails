class DrugAdministrationsController < ApplicationController
  before_action :set_drug_administration, only: [:show, :edit, :update, :destroy]

  # GET /drug_administrations
  # GET /drug_administrations.json
  def index
    # @drug_administrations = DrugAdministration.all
    @drug_administrations = params[:patient].present? ? DrugAdministration.all.where(patient_id: params[:patient]) : DrugAdministration.all
  end

  # GET /drug_administrations/1
  # GET /drug_administrations/1.json
  def show
  end

  # GET /drug_administrations/new
  def new
    @drug_administration = DrugAdministration.new
  end

  # GET /drug_administrations/1/edit
  def edit
  end

  # POST /drug_administrations
  # POST /drug_administrations.json
  def create
    @drug_administration = DrugAdministration.new(drug_administration_params)

    respond_to do |format|
      if @drug_administration.save
        format.html { redirect_to @drug_administration, notice: 'Drug administration was successfully created.' }
        format.json { render :show, status: :created, location: @drug_administration }
      else
        format.html { render :new }
        format.json { render json: @drug_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drug_administrations/1
  # PATCH/PUT /drug_administrations/1.json
  def update
    respond_to do |format|
      if @drug_administration.update(drug_administration_params)
        format.html { redirect_to @drug_administration, notice: 'Drug administration was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug_administration }
      else
        format.html { render :edit }
        format.json { render json: @drug_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_administrations/1
  # DELETE /drug_administrations/1.json
  def destroy
    @drug_administration.destroy
    respond_to do |format|
      format.html { redirect_to drug_administrations_url, notice: 'Drug administration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug_administration
      @drug_administration = DrugAdministration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_administration_params
      params.require(:drug_administration).permit(:patient_id, :medication_id, :quantity, :dt)
    end
end
