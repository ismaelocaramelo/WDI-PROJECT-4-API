class OrderRequestSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :payment, :status, :meal_id, :requester_details
  has_one :meal
  has_one :user

  def requester_details
    UserSerializer.new(object.user).attributes
  end
end
