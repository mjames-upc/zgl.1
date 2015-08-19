class ZoiglKalendarsController < ApplicationController
  before_action :set_zoigl_kalendar, only: [:show, :edit, :update, :destroy]

  # GET /zoigl_kalendars
  # GET /zoigl_kalendars.json
  def index
    @zoigl_kalendars = ZoiglKalendar.all
  end

  # GET /zoigl_kalendars/1
  # GET /zoigl_kalendars/1.json
  def show
  end

  # GET /zoigl_kalendars/new
  def new
    @zoigl_kalendar = ZoiglKalendar.new
  end

  # GET /zoigl_kalendars/1/edit
  def edit
  end

  # POST /zoigl_kalendars
  # POST /zoigl_kalendars.json
  def create
    @zoigl_kalendar = ZoiglKalendar.new(zoigl_kalendar_params)

    respond_to do |format|
      if @zoigl_kalendar.save
        format.html { redirect_to @zoigl_kalendar, notice: 'Zoigl kalendar was successfully created.' }
        format.json { render :show, status: :created, location: @zoigl_kalendar }
      else
        format.html { render :new }
        format.json { render json: @zoigl_kalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zoigl_kalendars/1
  # PATCH/PUT /zoigl_kalendars/1.json
  def update
    respond_to do |format|
      if @zoigl_kalendar.update(zoigl_kalendar_params)
        format.html { redirect_to @zoigl_kalendar, notice: 'Zoigl kalendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @zoigl_kalendar }
      else
        format.html { render :edit }
        format.json { render json: @zoigl_kalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zoigl_kalendars/1
  # DELETE /zoigl_kalendars/1.json
  def destroy
    @zoigl_kalendar.destroy
    respond_to do |format|
      format.html { redirect_to zoigl_kalendars_url, notice: 'Zoigl kalendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoigl_kalendar
      @zoigl_kalendar = ZoiglKalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoigl_kalendar_params
      params.require(:zoigl_kalendar).permit(:begin, :end, :description, :zoigl_stube_id)
    end
end
