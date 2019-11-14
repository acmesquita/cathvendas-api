class PaymentingsController < ApplicationController
  before_action :set_paymenting, only: [:show, :update, :destroy]

  # GET /paymentings
  def index
    @paymentings = Paymenting.all

    render json: @paymentings
  end

  # GET /paymentings/1
  def show
    render json: @paymenting
  end

  # POST /paymentings
  def create
    @paymenting = Paymenting.new(paymenting_params)

    if @paymenting.save
      render json: @paymenting, status: :created, location: @paymenting
    else
      render json: @paymenting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paymentings/1
  def update
    if @paymenting.update(paymenting_params)
      render json: @paymenting
    else
      render json: @paymenting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paymentings/1
  def destroy
    @paymenting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymenting
      @paymenting = Paymenting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paymenting_params
      params.require(:paymenting).permit(:description, :value)
    end
end
