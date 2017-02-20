class OrderRequestsController < ApplicationController
  before_action :set_order_request, only: [:show, :update, :destroy]

  # GET /order_requests
  def index
    @order_requests = OrderRequest.all

    render json: @order_requests
  end

  # GET /order_requests/1
  def show
    render json: @order_request
  end

  # POST /order_requests
  def create
    @order_request = OrderRequest.new(order_request_params)

    if @order_request.save
      render json: @order_request, status: :created, location: @order_request
    else
      render json: @order_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /order_requests/1
  def update
    if @order_request.update(order_request_params)
      render json: @order_request
    else
      render json: @order_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /order_requests/1
  def destroy
    @order_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_request
      @order_request = OrderRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_request_params
      params.require(:order_request).permit(:quantity, :payment, :user_id, :status, :publication_id, :meal_id)
    end
end
