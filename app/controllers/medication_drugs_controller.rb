class MedicationDrugsController < ApplicationController
  before_action :set_medication_drug, only: [:show, :edit, :update, :destroy]

  # GET /medication_drugs
  # GET /medication_drugs.json
  def index
    @medication_drugs = MedicationDrug.all
  end

  # GET /medication_drugs/1
  # GET /medication_drugs/1.json
  def show
  end

  # GET /medication_drugs/new
  def new
    @medication_drug = MedicationDrug.new
  end

  # GET /medication_drugs/1/edit
  def edit
  end

  # POST /medication_drugs
  # POST /medication_drugs.json
  def create
    @medication_drug = MedicationDrug.new(medication_drug_params)

    respond_to do |format|
      if @medication_drug.save
        format.html { redirect_to @medication_drug, notice: 'Medication drug was successfully created.' }
        format.json { render :show, status: :created, location: @medication_drug }
      else
        format.html { render :new }
        format.json { render json: @medication_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medication_drugs/1
  # PATCH/PUT /medication_drugs/1.json
  def update
    respond_to do |format|
      if @medication_drug.update(medication_drug_params)
        format.html { redirect_to @medication_drug, notice: 'Medication drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @medication_drug }
      else
        format.html { render :edit }
        format.json { render json: @medication_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medication_drugs/1
  # DELETE /medication_drugs/1.json
  def destroy
    @medication_drug.destroy
    respond_to do |format|
      format.html { redirect_to medication_drugs_url, notice: 'Medication drug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medication_drug
      @medication_drug = MedicationDrug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medication_drug_params
      params.require(:medication_drug).permit(:medication_id, :drug_id, :drugMg, :drugMl, :format)
    end
end
