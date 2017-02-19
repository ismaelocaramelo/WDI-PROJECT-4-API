class AddfieldsToGroup < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :protected, :boolean, :default => false
    add_column :groups_users, :accepted, :boolean, :default => false
    change_column :groups, :admin_id, :integer, :null => false

    add_reference :categories, :parent_category, index: true

    add_reference :meals, :user, index: true
    add_reference :meals, :category, index: true

    add_reference :ratings, :user, index: true
    add_reference :ratings, :order_request, index: true

    add_reference :publications, :user, index: true
    add_reference :publications, :meal, index: true

    add_reference :notifications, :type, index: true
    change_column :notifications, :date, :timestamp, :null => false
    add_reference :notifications, :sender, index: true
    add_reference :notifications, :receiver, index: true

    add_reference :order_requests, :user, index: true
    add_reference :order_requests, :status, index: true
    add_reference :order_requests, :publication, index: true
    add_reference :order_requests, :meal, index: true
    add_reference :order_requests, :rating, index: true


  end
end
