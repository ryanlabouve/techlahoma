class BlogEntry < ActiveRecord::Base
  self.table_name = 'public.blog_entries'
  belongs_to :blog_roll
  
  def self.get_recent_blogs()
    Rails.cache.fetch("recent_blogs", :expires_in => 15.minutes) {
      BlogEntry.joins(:blog_roll).select( 'blog_rolls.title as blog_title', 'blog_entries.title' ,  :entry_uri, :posted_date).order(posted_date: :desc).limit(10)
    }
  end
end