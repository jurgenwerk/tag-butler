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
  			if link_is_new? link and link_contains_tag? feed
  				# we got a hit!
  			end
  		end
		end

  	def visit(url)
			links = []
			begin
				doc = Nokogiri::HTML(open(url))
	      doc.css('a').each do |link|
	      	links << link unless link['href'].to_s.length < 1
      	end
    	rescue => ex
      	logger.warn "shieeeet!!: #{ex}" 
    	end
    	return links
		end

		def link_is_new?(link)
		end

		def link_contains_tag?(link, feed)
			
		end



end
