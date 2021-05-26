require "test_helper"

class SeancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seances_index_url
    assert_response :success
  end

  test "should get create" do
    get seances_create_url
    assert_response :success
  end

  test "should get update" do
    get seances_update_url
    assert_response :success
  end

  test "should get destroy" do
    get seances_destroy_url
    assert_response :success
  end
end
