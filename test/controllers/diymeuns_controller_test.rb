require 'test_helper'

class DiymeunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diymeun = diymeuns(:one)
  end

  test "should get index" do
    get diymeuns_url
    assert_response :success
  end

  test "should get new" do
    get new_diymeun_url
    assert_response :success
  end

  test "should create diymeun" do
    assert_difference('Diymeun.count') do
      post diymeuns_url, params: { diymeun: { key: @diymeun.key, name: @diymeun.name, url: @diymeun.url } }
    end

    assert_redirected_to diymeun_url(Diymeun.last)
  end

  test "should show diymeun" do
    get diymeun_url(@diymeun)
    assert_response :success
  end

  test "should get edit" do
    get edit_diymeun_url(@diymeun)
    assert_response :success
  end

  test "should update diymeun" do
    patch diymeun_url(@diymeun), params: { diymeun: { key: @diymeun.key, name: @diymeun.name, url: @diymeun.url } }
    assert_redirected_to diymeun_url(@diymeun)
  end

  test "should destroy diymeun" do
    assert_difference('Diymeun.count', -1) do
      delete diymeun_url(@diymeun)
    end

    assert_redirected_to diymeuns_url
  end
end
