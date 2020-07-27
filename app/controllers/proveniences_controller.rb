class ProveniencesController < ApplicationController
  before_action :set_provenience, only: [:show, :edit, :update, :destroy]

  # GET /proveniences
  # GET /proveniences.json
  def index
    @proveniences = Provenience.all
  end

  # GET /proveniences/1
  # GET /proveniences/1.json
  def show
  end

  # GET /proveniences/new
  def new
    @provenience = Provenience.new
  end

  # GET /proveniences/1/edit
  def edit
  end

  # POST /proveniences
  # POST /proveniences.json
  def create
    @provenience = Provenience.new(provenience_params)

    respond_to do |format|
      if @provenience.save
        format.html { redirect_to @provenience, notice: 'Provenience was successfully created.' }
        format.json { render :show, status: :created, location: @provenience }
      else
        format.html { render :new }
        format.json { render json: @provenience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveniences/1
  # PATCH/PUT /proveniences/1.json
  def update
    respond_to do |format|
      if @provenience.update(provenience_params)
        format.html { redirect_to @provenience, notice: 'Provenience was successfully updated.' }
        format.json { render :show, status: :ok, location: @provenience }
      else
        format.html { render :edit }
        format.json { render json: @provenience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveniences/1
  # DELETE /proveniences/1.json
  def destroy
    @provenience.destroy
    respond_to do |format|
      format.html { redirect_to proveniences_url, notice: 'Provenience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provenience
      @provenience = Provenience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def provenience_params
      params.require(:provenience).permit(:title, :description, :image)
    end
end
