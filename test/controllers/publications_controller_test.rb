require 'test_helper'

class PublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get publications_url, as: :json
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post publications_url, params: { publication: { date: @publication.date, deadline: @publication.deadline, meetingPoint: @publication.meetingPoint, setDate: @publication.setDate } }, as: :json
    end

    assert_response 201
  end

  test "should show publication" do
    get publication_url(@publication), as: :json
    assert_response :success
  end

  test "should update publication" do
    patch publication_url(@publication), params: { publication: { date: @publication.date, deadline: @publication.deadline, meetingPoint: @publication.meetingPoint, setDate: @publication.setDate } }, as: :json
    assert_response 200
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete publication_url(@publication), as: :json
    end

    assert_response 204
  end
end
