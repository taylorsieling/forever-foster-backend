require "test_helper"

class FostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foster = fosters(:one)
  end

  test "should get index" do
    get fosters_url, as: :json
    assert_response :success
  end

  test "should create foster" do
    assert_difference('Foster.count') do
      post fosters_url, params: { foster: { first_name: @foster.first_name, last_name: @foster.last_name, picture: @foster.picture } }, as: :json
    end

    assert_response 201
  end

  test "should show foster" do
    get foster_url(@foster), as: :json
    assert_response :success
  end

  test "should update foster" do
    patch foster_url(@foster), params: { foster: { first_name: @foster.first_name, last_name: @foster.last_name, picture: @foster.picture } }, as: :json
    assert_response 200
  end

  test "should destroy foster" do
    assert_difference('Foster.count', -1) do
      delete foster_url(@foster), as: :json
    end

    assert_response 204
  end
end
