class OrderRequestSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :payment, :user, :meal, :status
end
