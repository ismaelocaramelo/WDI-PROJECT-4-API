class AddfieldsToGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :parent_category, index: true

    add_reference :meals, :user, index: true
    add_reference :meals, :category, index: true

    add_reference :ratings, :user, index: true
    add_reference :ratings, :order_request, index: true

    add_reference :notifications, :sender, index: true
    add_reference :notifications, :receiver, index: true

    add_reference :order_requests, :user, index: true
    add_reference :order_requests, :meal, index: true
  end
end
