require 'test_helper'

class CarteComponentsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carte_components_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get carte_components_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get carte_components_controller_new_url
    assert_response :success
  end

  test "should get edit" do
    get carte_components_controller_edit_url
    assert_response :success
  end

  test "should get create" do
    get carte_components_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get carte_components_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get carte_components_controller_destroy_url
    assert_response :success
  end

end
