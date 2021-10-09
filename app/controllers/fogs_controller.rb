class FogsController < ApplicationController
  before_action :set_fog, only: %i[ show edit update destroy ]

  # GET /fogs or /fogs.json
  def index
    @fogs = Fog.all
  end

  # GET /fogs/1 or /fogs/1.json
  def show
  end

  # GET /fogs/new
  def new
    @fog = Fog.new
  end

  # GET /fogs/1/edit
  def edit
  end

  # POST /fogs or /fogs.json
  def create
    @fog = Fog.new(fog_params)

    respond_to do |format|
      if @fog.save
        CreatePictureJob.perform_later @fog
        format.html { redirect_to @fog, notice: "Fog was successfully created." }
        format.json { render :show, status: :created, location: @fog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fogs/1 or /fogs/1.json
  def update
    respond_to do |format|
      if @fog.update(fog_params)
        CreatePictureJob.perform_later @fog
        format.html { redirect_to @fog, notice: "Fog was successfully updated." }
        format.json { render :show, status: :ok, location: @fog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fogs/1 or /fogs/1.json
  def destroy
    @fog.destroy
    respond_to do |format|
      format.html { redirect_to fogs_url, notice: "Fog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fog
      @fog = Fog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fog_params
      params.require(:fog).permit(:name, :words)
    end
end
