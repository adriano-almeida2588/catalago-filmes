require 'test_helper'

class GeneroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genero_index_url
    assert_response :success
  end

  test "should get new" do
    get genero_new_url
    assert_response :success
  end

  test "should get edit" do
    get genero_edit_url
    assert_response :success
  end

  test "should get show" do
    get genero_show_url
    assert_response :success
  end

end
