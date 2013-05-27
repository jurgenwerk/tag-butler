class CrawlerController < ApplicationController

	require 'nokogiri'
	require 'open-uri'

  def crawl_all

  	User.all.each do |user|
  		user.feeds.all.each do |feed|
  			crawl feed
  		end
  	end

  end

  private

  	def crawl_feed(feed)

  		links = visit feed.url 

  		links.each do |link.downcase!|
  			if link_is_new? feed, link and link_contains_tag? feed, link
  				feed.hits.create url: link
  			end
  		end
		end

  	def visit(url)
			links = []
			begin
				doc = Nokogiri::HTML(open(url))
	      doc.css('a').each do |link|
	      	links['href'] << link unless link['href'].to_s.length <= 1
      	end
    	rescue => ex
      	logger.warn "shieeeet!!: #{ex}" 
    	end
    	return links
		end

		def link_is_new?(feed, link)
			feed.hits_find_by_url link 
		end

		def link_contains_tag?(feed, link)
			feed.tags.each do |tag|
				return true if link.include? tag
			end
			false
		end
end
