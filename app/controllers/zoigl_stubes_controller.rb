class ZoiglStubesController < ApplicationController
  before_action :set_zoigl_stube, only: [:show, :edit, :update, :destroy]

  # GET /zoigl_stubes
  # GET /zoigl_stubes.json
  def index
    @zoigl_stubes = ZoiglStube.all
  end

  # GET /zoigl_stubes/1
  # GET /zoigl_stubes/1.json
  def show
  end

  # GET /zoigl_stubes/new
  def new
    @zoigl_stube = ZoiglStube.new
  end

  # GET /zoigl_stubes/1/edit
  def edit
  end

  # POST /zoigl_stubes
  # POST /zoigl_stubes.json
  def create
    @zoigl_stube = ZoiglStube.new(zoigl_stube_params)

    respond_to do |format|
      if @zoigl_stube.save
        format.html { redirect_to @zoigl_stube, notice: 'Zoigl stube was successfully created.' }
        format.json { render :show, status: :created, location: @zoigl_stube }
      else
        format.html { render :new }
        format.json { render json: @zoigl_stube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zoigl_stubes/1
  # PATCH/PUT /zoigl_stubes/1.json
  def update
    respond_to do |format|
      if @zoigl_stube.update(zoigl_stube_params)
        format.html { redirect_to @zoigl_stube, notice: 'Zoigl stube was successfully updated.' }
        format.json { render :show, status: :ok, location: @zoigl_stube }
      else
        format.html { render :edit }
        format.json { render json: @zoigl_stube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zoigl_stubes/1
  # DELETE /zoigl_stubes/1.json
  def destroy
    @zoigl_stube.destroy
    respond_to do |format|
      format.html { redirect_to zoigl_stubes_url, notice: 'Zoigl stube was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoigl_stube
      @zoigl_stube = ZoiglStube.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoigl_stube_params
      params.require(:zoigl_stube).permit(:stube_name, :address, :city, :rbid, :founded, :score, :lat, :lon, :web, :hours, :description, :phone)
    end
end
