class BlogController < ApplicationController

  def index
    @blogs = BlogEntry.get_recent_blogs()
    @blogroll = BlogRoll.all
  end

end
