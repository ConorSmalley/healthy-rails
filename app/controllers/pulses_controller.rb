class PulsesController < ApplicationController
  before_action :set_pulse, only: [:show, :edit, :update, :destroy]
  
  # GET /pulses
  # GET /pulses.json
  def index
    # @pulses = Pulse.all
    @pulses = params[:patient].present? ? Pulse.all.where(patient_id: params[:patient]) : Pulse.all
  end

  # GET /pulses/1
  # GET /pulses/1.json
  def show
    @pulse = Pulse.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json do
        render json: {
          id: @pulse.id,
          pulse: @pulse.pulse,
          dt: @pulse.dt
        }.to_json
      end
    end
  end

  # GET /pulses/new
  def new
    @pulse = Pulse.new
  end

  # GET /pulses/1/edit
  def edit
  end

  # POST /pulses
  # POST /pulses.json
  def create
    @pulse = Pulse.new(pulse_params)

    respond_to do |format|
      if @pulse.save
        format.html { redirect_to @pulse, notice: 'Pulse was successfully created.' }
        format.json { render :show, status: :created, location: @pulse }
      else
        format.html { render :new }
        format.json { render json: @pulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pulses/1
  # PATCH/PUT /pulses/1.json
  def update
    respond_to do |format|
      if @pulse.update(pulse_params)
        format.html { redirect_to @pulse, notice: 'Pulse was successfully updated.' }
        format.json { render :show, status: :ok, location: @pulse }
      else
        format.html { render :edit }
        format.json { render json: @pulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pulses/1
  # DELETE /pulses/1.json
  def destroy
    @pulse.destroy
    respond_to do |format|
      format.html { redirect_to pulses_url, notice: 'Pulse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pulse
      @pulse = Pulse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pulse_params
      params.require(:pulse).permit(:patient_id, :pulse, :dt)
    end
end
