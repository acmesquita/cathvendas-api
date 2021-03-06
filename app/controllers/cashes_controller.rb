class CashesController < ApplicationController
  before_action :set_cash, only: [:show, :update, :destroy]

  # GET /cashs
  def index
    @cashes = Cash.all

    render json: @cashes
  end

  # GET /cashs/1
  def show
    render json: @cash
  end

  # POST /cashs
  def create
    @cash = Cash.new(cash_params)

    if @cash.save
      render json: @cash, status: :created, location: @cash
    else
      render json: @cash.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cashs/1
  def update
    if @cash.update(cash_params)
      render json: @cash
    else
      render json: @cash.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cashs/1
  def destroy
    @cash.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash
      @cash = Cash.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cash_params
      params.require(:cash).permit!
    end
end
