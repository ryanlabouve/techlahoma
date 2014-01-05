require 'feed-normalizer'
class BlogRoll < ActiveRecord::Base
  self.table_name = 'public.blog_rolls'
  has_many :blog_entries

  def self.harvest_new_entries()
    rollin = BlogRoll.where('active_flag = true').all
    rollin.each do |r|
      parse_feed_normal(r[:feed_uri], r[:id])
    end
    
  end

  def self.parse_feed_normal(feed_uri, blog_id)
    feed = FeedNormalizer::FeedNormalizer.parse open(feed_uri)

    today = Date.new(2013,11,4)  #hard date for now to back populate entries
    feed.entries.each do |item|

      dateland = item.date_published  || item.last_updated

      if dateland.to_date > today
        
        toppy = BlogEntry.where("entry_uri = ?", item.id).select(:id).first
        if toppy.nil?
          entry = BlogEntry.new
          entry.blogroll_id = blog_id
          entry.title = item.title
          entry.entry_uri = item.id
          entry.posted_date = dateland
          entry.save
        end
       end  #end if

    end
  end

end