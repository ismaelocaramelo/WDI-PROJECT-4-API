class OrderRequestSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :payment, :user, :publication, :meal, :status
end
