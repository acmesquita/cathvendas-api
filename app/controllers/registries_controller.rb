class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :update, :destroy]

  # GET /registrys
  def index
    @registries = Registry.all

    render json: @registries
  end

  # GET /registries/1
  def show
    render json: @registry
  end

  # POST /registries
  def create
    @registry = Registry.new(registry_params)

    if @registry.save
      render json: @registry, status: :created, location: @registry
    else
      render json: @registry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registries/1
  def update
    if @registry.update(registry_params)
      render json: @registry
    else
      render json: @registry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registrys/1
  def destroy
    @registry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def registry_params
      params.require(:registry).permit(:description, :value, :kind)
    end
end
