class MedicalsController < ApplicationController
  before_action :set_medical, only: [:show, :update, :destroy]

  # GET /medicals
  def index
    @medicals = Medical.all

    render json: @medicals
  end

  # GET /medicals/1
  def show
    render json: @medical
  end

  # POST /medicals
  def create
    @medical = Medical.new(medical_params)

    if @medical.save
      render json: @medical, status: :created, location: @medical
    else
      render json: @medical.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicals/1
  def update
    if @medical.update(medical_params)
      render json: @medical
    else
      render json: @medical.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medicals/1
  def destroy
    @medical.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical
      @medical = Medical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_params
      params.require(:medical).permit(:Entry, :title, :date, :time, :notes, :kitten_id)
    end
end
