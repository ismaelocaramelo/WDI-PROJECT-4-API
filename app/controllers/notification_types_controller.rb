class NotificationTypesController < ApplicationController
  before_action :set_notification_type, only: [:show, :update, :destroy]

  # GET /notification_types
  def index
    @notification_types = NotificationType.all

    render json: @notification_types
  end

  # GET /notification_types/1
  def show
    render json: @notification_type
  end

  # POST /notification_types
  def create
    @notification_type = NotificationType.new(notification_type_params)

    if @notification_type.save
      render json: @notification_type, status: :created, location: @notification_type
    else
      render json: @notification_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notification_types/1
  def update
    if @notification_type.update(notification_type_params)
      render json: @notification_type
    else
      render json: @notification_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notification_types/1
  def destroy
    @notification_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification_type
      @notification_type = NotificationType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notification_type_params
      params.require(:notification_type).permit(:name)
    end
end
