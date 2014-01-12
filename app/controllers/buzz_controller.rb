class BuzzController < ApplicationController

  def index
    @blogs = BlogEntry.get_recent_blogs()
    @blogroll = BlogRoll.all
  end


  def updatethevariousblogs
    BlogRoll.harvest_new_entries()
    render text: "harvest complete", status: 200    
  end


end
