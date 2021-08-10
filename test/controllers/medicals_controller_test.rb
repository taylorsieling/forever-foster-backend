require "test_helper"

class MedicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical = medicals(:one)
  end

  test "should get index" do
    get medicals_url, as: :json
    assert_response :success
  end

  test "should create medical" do
    assert_difference('Medical.count') do
      post medicals_url, params: { medical: { Entry: @medical.Entry, date: @medical.date, kitten_id: @medical.kitten_id, notes: @medical.notes, time: @medical.time, title: @medical.title } }, as: :json
    end

    assert_response 201
  end

  test "should show medical" do
    get medical_url(@medical), as: :json
    assert_response :success
  end

  test "should update medical" do
    patch medical_url(@medical), params: { medical: { Entry: @medical.Entry, date: @medical.date, kitten_id: @medical.kitten_id, notes: @medical.notes, time: @medical.time, title: @medical.title } }, as: :json
    assert_response 200
  end

  test "should destroy medical" do
    assert_difference('Medical.count', -1) do
      delete medical_url(@medical), as: :json
    end

    assert_response 204
  end
end
