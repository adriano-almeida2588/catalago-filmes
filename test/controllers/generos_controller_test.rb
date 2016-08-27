require 'test_helper'

class GenerosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get generos_index_url
    assert_response :success
  end

  test "should get new" do
    get generos_new_url
    assert_response :success
  end

  test "should get edit" do
    get generos_edit_url
    assert_response :success
  end

  test "should get show" do
    get generos_show_url
    assert_response :success
  end

end
