require 'test_helper'

class PublicAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_account = public_accounts(:one)
  end

  test "should get index" do
    get public_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_public_account_url
    assert_response :success
  end

  test "should create public_account" do
    assert_difference('PublicAccount.count') do
      post public_accounts_url, params: { public_account: { weixin_secret_key: @public_account.weixin_secret_key, weixin_token: @public_account.weixin_token } }
    end

    assert_redirected_to public_account_url(PublicAccount.last)
  end

  test "should show public_account" do
    get public_account_url(@public_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_account_url(@public_account)
    assert_response :success
  end

  test "should update public_account" do
    patch public_account_url(@public_account), params: { public_account: { weixin_secret_key: @public_account.weixin_secret_key, weixin_token: @public_account.weixin_token } }
    assert_redirected_to public_account_url(@public_account)
  end

  test "should destroy public_account" do
    assert_difference('PublicAccount.count', -1) do
      delete public_account_url(@public_account)
    end

    assert_redirected_to public_accounts_url
  end
end
