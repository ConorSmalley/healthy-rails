class BloodGroupsController < ApplicationController
  before_action :set_blood_group, only: [:show, :edit, :update, :destroy]

  # GET /blood_groups
  # GET /blood_groups.json
  def index
    @blood_groups = BloodGroup.all.order(bloodgroup: :asc)
  end

  # GET /blood_groups/1
  # GET /blood_groups/1.json
  def show
  end

  # GET /blood_groups/new
  def new
    @blood_group = BloodGroup.new
  end

  # GET /blood_groups/1/edit
  def edit
  end

  # POST /blood_groups
  # POST /blood_groups.json
  def create
    @blood_group = BloodGroup.new(blood_group_params)

    respond_to do |format|
      if @blood_group.save
        format.html { redirect_to @blood_group, notice: 'Blood group was successfully created.' }
        format.json { render :show, status: :created, location: @blood_group }
      else
        format.html { render :new }
        format.json { render json: @blood_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_groups/1
  # PATCH/PUT /blood_groups/1.json
  def update
    respond_to do |format|
      if @blood_group.update(blood_group_params)
        format.html { redirect_to @blood_group, notice: 'Blood group was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_group }
      else
        format.html { render :edit }
        format.json { render json: @blood_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_groups/1
  # DELETE /blood_groups/1.json
  def destroy
    @blood_group.destroy
    respond_to do |format|
      format.html { redirect_to blood_groups_url, notice: 'Blood group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_group
      @blood_group = BloodGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_group_params
      params.require(:blood_group).permit(:bloodgroup)
    end
end
