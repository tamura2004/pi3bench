require 'test_helper'

class PcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc = pcs(:one)
  end

  test "should get index" do
    get pcs_url, as: :json
    assert_response :success
  end

  test "should create pc" do
    assert_difference('Pc.count') do
      post pcs_url, params: { pc: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show pc" do
    get pc_url(@pc), as: :json
    assert_response :success
  end

  test "should update pc" do
    patch pc_url(@pc), params: { pc: {  } }, as: :json
    assert_response 200
  end

  test "should destroy pc" do
    assert_difference('Pc.count', -1) do
      delete pc_url(@pc), as: :json
    end

    assert_response 204
  end
end
