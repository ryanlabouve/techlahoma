require 'feed-normalizer'
class BlogRoll < ActiveRecord::Base
  self.table_name = 'public.blog_rolls'
  has_many :blog_entries

  def self.harvest_new_entries()
    rollin = BlogRoll.where('active_flag = true')
    rollin.each do |r|
      parse_feed_normal(r[:feed_uri], r[:id], Time.now - 3.days)
    end
  end

  def self.create(title, author, uri, feed_uri, feed_type)
      roll = BlogRoll.new
      roll.title = title
      roll.author = author
      roll.blog_uri = uri
      roll.feed_uri = feed_uri
      roll.feed_type = feed_type
      roll.save
      
      #back fill the last 3 months
      parse_feed_normal(roll.feed_uri, roll.id, Time.now - 3.months)
  end



  def self.parse_feed_normal(feed_uri, blog_id, datefilter)
    feed = FeedNormalizer::FeedNormalizer.parse open(feed_uri)
  
    feed.entries.each do |item|

      dateland = item.date_published  || item.last_updated

      if dateland.to_date > datefilter
        
        toppy = BlogEntry.where("entry_uri = ?", item.id).select(:id).first
        if toppy.nil?
          entry = BlogEntry.new
          entry.blog_roll_id = blog_id
          entry.title = item.title
          entry.entry_uri = item.id
          entry.posted_date = dateland
          entry.save
        end
       end  #end if

    end
  end

end