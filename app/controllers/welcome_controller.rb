class WelcomeController < ApplicationController

  def index
    @consumer_tokens = IgAppToken.where(:user_id => current_user.id)
    @token = @consumer_tokens.first.client
    logger.info 'private data' + @token.get('/data/index').body
  end
end