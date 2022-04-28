class DripsController < ApplicationController
  before_action :set_drip, only: %i[ show edit update destroy ]

  # GET /drips or /drips.json
  def index
    @drips = Drip.all
  end

  # GET /drips/1 or /drips/1.json
  def show
  end

  # GET /drips/new
  def new
    @drip = Drip.new
  end

  # GET /drips/1/edit
  def edit
  end

  # POST /drips or /drips.json
  def create
    @drip = Drip.new(drip_params)

    respond_to do |format|
      if @drip.save
        format.html { redirect_to drip_url(@drip), notice: "Drip was successfully created." }
        format.json { render :show, status: :created, location: @drip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drips/1 or /drips/1.json
  def update
    respond_to do |format|
      if @drip.update(drip_params)
        format.html { redirect_to drip_url(@drip), notice: "Drip was successfully updated." }
        format.json { render :show, status: :ok, location: @drip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @drip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drips/1 or /drips/1.json
  def destroy
    @drip.destroy

    respond_to do |format|
      format.html { redirect_to drips_url, notice: "Drip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drip
      @drip = Drip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drip_params
      params.require(:drip).permit(:nome, :pants, :pricepants, :blusa, :priceblusa, :bone, :pricebone)
    end
end
