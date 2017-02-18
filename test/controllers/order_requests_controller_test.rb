require 'test_helper'

class OrderRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_request = order_requests(:one)
  end

  test "should get index" do
    get order_requests_url, as: :json
    assert_response :success
  end

  test "should create order_request" do
    assert_difference('OrderRequest.count') do
      post order_requests_url, params: { order_request: { payment: @order_request.payment, quantity: @order_request.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show order_request" do
    get order_request_url(@order_request), as: :json
    assert_response :success
  end

  test "should update order_request" do
    patch order_request_url(@order_request), params: { order_request: { payment: @order_request.payment, quantity: @order_request.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy order_request" do
    assert_difference('OrderRequest.count', -1) do
      delete order_request_url(@order_request), as: :json
    end

    assert_response 204
  end
end
