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
    
    # this method is still pretty gross and needs help
    counter = 2
    begin
        p counter
        feed = FeedNormalizer::FeedNormalizer.parse open(feed_uri)
        #feed = FeedNormalizer::FeedNormalizer.parse open("http://datachomp.com/atom.xml")
        if feed.entries.nil?
          sleep 2
          p 'the lion sleeps tonight'
          feed = FeedNormalizer::FeedNormalizer.parse open(feed_uri)
        end
      rescue Timeout::Error => e
        p 'timeouts'  
        p e.message
        return false
      rescue OpenURI::HTTPError => e
        p 'this whole thing is broken'
        p e.message
        return false
      rescue NoMethodError => e
        p 'no method here'
        p e.message
        return false
      rescue RuntimeError  => e
        p 'it broke'

        p e.message
        (counter-=1) < 0 ? raise : retry  #lets just rety twice
      end
        
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