require 'test_helper'

class NotificationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notification_type = notification_types(:one)
  end

  test "should get index" do
    get notification_types_url, as: :json
    assert_response :success
  end

  test "should create notification_type" do
    assert_difference('NotificationType.count') do
      post notification_types_url, params: { notification_type: { name: @notification_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show notification_type" do
    get notification_type_url(@notification_type), as: :json
    assert_response :success
  end

  test "should update notification_type" do
    patch notification_type_url(@notification_type), params: { notification_type: { name: @notification_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy notification_type" do
    assert_difference('NotificationType.count', -1) do
      delete notification_type_url(@notification_type), as: :json
    end

    assert_response 204
  end
end
