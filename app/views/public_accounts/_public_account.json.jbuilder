json.extract! public_account, :id, :weixin_secret_key, :weixin_token, :created_at, :updated_at
json.url public_account_url(public_account, format: :json)
