class ZoiglBeersController < ApplicationController
  before_action :set_zoigl_beer, only: [:show, :edit, :update, :destroy]

  # GET /zoigl_beers
  # GET /zoigl_beers.json
  def index
    @zoigl_beers = ZoiglBeer.all
  end

  # GET /zoigl_beers/1
  # GET /zoigl_beers/1.json
  def show
  end

  # GET /zoigl_beers/new
  def new
    @zoigl_beer = ZoiglBeer.new
  end

  # GET /zoigl_beers/1/edit
  def edit
  end

  # POST /zoigl_beers
  # POST /zoigl_beers.json
  def create
    @zoigl_beer = ZoiglBeer.new(zoigl_beer_params)

    respond_to do |format|
      if @zoigl_beer.save
        format.html { redirect_to @zoigl_beer, notice: 'Zoigl beer was successfully created.' }
        format.json { render :show, status: :created, location: @zoigl_beer }
      else
        format.html { render :new }
        format.json { render json: @zoigl_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zoigl_beers/1
  # PATCH/PUT /zoigl_beers/1.json
  def update
    respond_to do |format|
      if @zoigl_beer.update(zoigl_beer_params)
        format.html { redirect_to @zoigl_beer, notice: 'Zoigl beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @zoigl_beer }
      else
        format.html { render :edit }
        format.json { render json: @zoigl_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zoigl_beers/1
  # DELETE /zoigl_beers/1.json
  def destroy
    @zoigl_beer.destroy
    respond_to do |format|
      format.html { redirect_to zoigl_beers_url, notice: 'Zoigl beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoigl_beer
      @zoigl_beer = ZoiglBeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoigl_beer_params
      params.require(:zoigl_beer).permit(:beername, :rbid, :rbbrewer, :alcohol, :description)
    end
end
