require 'test_helper'

class CarteComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get carte_components_home_url
    assert_response :success
  end

  test "should get index" do
    get carte_components_index_url
    assert_response :success
  end

  test "should get show" do
    get carte_components_show_url
    assert_response :success
  end

  test "should get new" do
    get carte_components_new_url
    assert_response :success
  end

  test "should get edit" do
    get carte_components_edit_url
    assert_response :success
  end

  test "should get create" do
    get carte_components_create_url
    assert_response :success
  end

  test "should get update" do
    get carte_components_update_url
    assert_response :success
  end

  test "should get destroy" do
    get carte_components_destroy_url
    assert_response :success
  end

end
