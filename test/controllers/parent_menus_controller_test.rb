require 'test_helper'

class ParentMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_menu = parent_menus(:one)
  end

  test "should get index" do
    get parent_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_menu_url
    assert_response :success
  end

  test "should create parent_menu" do
    assert_difference('ParentMenu.count') do
      post parent_menus_url, params: { parent_menu: { is_show: @parent_menu.is_show, name: @parent_menu.name } }
    end

    assert_redirected_to parent_menu_url(ParentMenu.last)
  end

  test "should show parent_menu" do
    get parent_menu_url(@parent_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_menu_url(@parent_menu)
    assert_response :success
  end

  test "should update parent_menu" do
    patch parent_menu_url(@parent_menu), params: { parent_menu: { is_show: @parent_menu.is_show, name: @parent_menu.name } }
    assert_redirected_to parent_menu_url(@parent_menu)
  end

  test "should destroy parent_menu" do
    assert_difference('ParentMenu.count', -1) do
      delete parent_menu_url(@parent_menu)
    end

    assert_redirected_to parent_menus_url
  end
end
