class TravelguidesController < ApplicationController
  before_action :set_travelguide, only: %i[ show edit update destroy ]

  # GET /travelguides or /travelguides.json
  def index
    @travelguides = Travelguide.all
  end

  # GET /travelguides/1 or /travelguides/1.json
  def show
  end

  # GET /travelguides/new
  def new
    @travelguide = Travelguide.new
  end

  # GET /travelguides/1/edit
  def edit
  end

  # POST /travelguides or /travelguides.json
  def create
    @travelguide = Travelguide.new(travelguide_params)

    respond_to do |format|
      if @travelguide.save
        format.html { redirect_to travelguide_url(@travelguide), notice: "Travelguide was successfully created." }
        format.json { render :show, status: :created, location: @travelguide }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @travelguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travelguides/1 or /travelguides/1.json
  def update
    respond_to do |format|
      if @travelguide.update(travelguide_params)
        format.html { redirect_to travelguide_url(@travelguide), notice: "Travelguide was successfully updated." }
        format.json { render :show, status: :ok, location: @travelguide }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @travelguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travelguides/1 or /travelguides/1.json
  def destroy
    @travelguide.destroy

    respond_to do |format|
      format.html { redirect_to travelguides_url, notice: "Travelguide was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travelguide
      @travelguide = Travelguide.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def travelguide_params
      params.require(:travelguide).permit(:blog_id, :admin_id, :blog_title, :blog_desc, :blog_content, :date_published)
    end
end
