# require "redis"
# require "redis-namespace"
# require "weixin_authorize"



# redis = Redis.new(host: "127.0.0.1", port: "6379", db: 15)
# namespace = "test_weixin:weixin_authorize"


# # 每次重启时，会把当前的命令空间所有的access_token 清除掉。
# exist_keys = redis.keys("#{namespace}:*")
# exist_keys.each{|key|redis.del(key)}

# redis_with_ns = Redis::Namespace.new("#{namespace}", :redis => redis)

# WeixinAuthorize.configure do |config|
# config.redis = redis_with_ns
# config.rest_client_options = {timeout: 10, open_timeout: 10, verify_ssl: true}
# end

# $client = WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])


# end
