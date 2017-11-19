require 'test_helper'

class TypeSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_section = type_sections(:one)
  end

  test "should get index" do
    get type_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_type_section_url
    assert_response :success
  end

  test "should create type_section" do
    assert_difference('TypeSection.count') do
      post type_sections_url, params: { type_section: { abrev: @type_section.abrev, active: @type_section.active, name: @type_section.name, tag: @type_section.tag } }
    end

    assert_redirected_to type_section_url(TypeSection.last)
  end

  test "should show type_section" do
    get type_section_url(@type_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_section_url(@type_section)
    assert_response :success
  end

  test "should update type_section" do
    patch type_section_url(@type_section), params: { type_section: { abrev: @type_section.abrev, active: @type_section.active, name: @type_section.name, tag: @type_section.tag } }
    assert_redirected_to type_section_url(@type_section)
  end

  test "should destroy type_section" do
    assert_difference('TypeSection.count', -1) do
      delete type_section_url(@type_section)
    end

    assert_redirected_to type_sections_url
  end
end
