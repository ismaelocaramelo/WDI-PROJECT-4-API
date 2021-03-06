class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update]

  # GET /groups
  def index
    @groups = Group.all
    p @groups, '***************'
    render json: @groups
  end

  # GET /groups/1
  def show
    render json: @group
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  def add_member
    user = current_user
    group = Group.find(params[:group_id])
    group.users << user
    group.save!

    render json: group
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:name, :icon, :admin_id, :type_id, :protected)
    end
end
