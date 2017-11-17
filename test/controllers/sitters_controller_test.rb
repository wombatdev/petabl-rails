require 'test_helper'

class SittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitter = sitters(:one)
  end

  test "should get index" do
    get sitters_url, as: :json
    assert_response :success
  end

  test "should create sitter" do
    assert_difference('Sitter.count') do
      post sitters_url, params: { sitter: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show sitter" do
    get sitter_url(@sitter), as: :json
    assert_response :success
  end

  test "should update sitter" do
    patch sitter_url(@sitter), params: { sitter: {  } }, as: :json
    assert_response 200
  end

  test "should destroy sitter" do
    assert_difference('Sitter.count', -1) do
      delete sitter_url(@sitter), as: :json
    end

    assert_response 204
  end
end
