class IgAppToken < ConsumerToken
  IG_APP_SETTINGS = {
    :site => 'http://matiz.igapps.co', # this is the URL to `provider` app
    :request_token_path => '/oauth/request_token',
    :access_token_path => '/oauth/access_token',
    :authorize_path => '/oauth/authorize'
  }

  def self.consumer(options={})
    @consumer ||= OAuth::Consumer.new(credentials[:key], credentials[:secret], IG_APP_SETTINGS.merge(options))
  end
end