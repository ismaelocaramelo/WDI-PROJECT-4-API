class OrderRequestSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :payment
end
