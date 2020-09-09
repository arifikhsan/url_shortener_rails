require 'test_helper'

class Api::LinksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_links_index_url
    assert_response :success
  end

  test "should get show" do
    get api_links_show_url
    assert_response :success
  end

  test "should get update" do
    get api_links_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_links_delete_url
    assert_response :success
  end

end
