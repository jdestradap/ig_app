# edit this file to contain credentials for the OAuth services you support.
# each entry needs a corresponding token model.
#
# eg. :twitter => TwitterToken, :hour_feed => HourFeedToken etc.

OAUTH_CREDENTIALS = {
  :ig_app => {
    :key => 'SS8hK5pZeEGADVNo1ZbgpFS2sh802ZpQzRxHwOgb',
    :secret => 'IBU8OAIgx6bnUVFJgGtw3WFoAcsuBwtahc3tCqSd',
    :expose => true
  }
}

OAUTH_CREDENTIALS={
} unless defined? OAUTH_CREDENTIALS

load 'oauth/models/consumers/service_loader.rb'