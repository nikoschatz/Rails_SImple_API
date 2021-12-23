class DeliveriesController < ApplicationController
  before_action :authenticate_user
  before_action :set_delivery, only: %i[ show update destroy ]

  # GET /deliveries
  def index
    @deliveries = Delivery.all

    render json: @deliveries
  end

  # GET /deliveries/1
  def show
    render json: @delivery
  end

  # POST /deliveries
  def create
    delivery_params=params.
                      require(:delivery).
                      permit(*Delivery.column_names).
                      merge(user: current_user)

    @delivery = Delivery.new(delivery_params.except(:controller, :action))

    if @delivery.save
      render json: @delivery, status: :created, location: @delivery
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deliveries/1
  def update
    if @delivery.update(delivery_params)
      render json: @delivery
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deliveries/1
  def destroy
    @delivery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_params
      params.fetch(:delivery, {})
    end
end
