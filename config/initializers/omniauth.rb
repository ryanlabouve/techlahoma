Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']
  provider :github, ENV['GITHUB_CONSUMER_KEY'], ENV['GITHUB_CONSUMER_SECRET']
  
end

# This is a monkey patch to make OmniAuth behave the same in development
# as in production and test.  For some reason in development they raise an exception
# instead of redirecting to the failure page.  The monkey patch just overrides
# the raise_out! method to do nothing.  (The commented out line below is the 
# original implementation of the method.)
class OmniAuth::FailureEndpoint
  def raise_out!
    #raise env['omniauth.error'] || OmniAuth::Error.new(env['omniauth.error.type'])
  end
end

# At some point (hopefully when OmniAuth 1.1.5 is released) the monkey patch 
# above can be removed and can be replaced with the line below.
# OmniAuth.config.failure_raise_out_environments = []
