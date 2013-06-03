module CrawlerHelper
	require 'nokogiri'
	require 'open-uri'
	require 'addressable/uri'

		def crawl_group(tag_group)
			links = visit tag_group 
			links.each do |link|
				title, url = link.first
				if link_is_new? tag_group, url and link_contains_tag? tag_group, title
					tag_group.hits.create url: url, title: title
				end
			end
		end

  	def visit(tag_group)
  		links = []
  		tag_group.feeds.each do |feed|
	  		url = feed.url
				doc = Nokogiri::HTML(open(url))
	      doc.css('a').each do |link|
	      	link_title = link.children.text
	      	link_url = link['href']
	      	if link_title != nil and link_title != "" and link_url != nil and link_url != ""
						link_url = fix_url feed.url, link_url
	      		if url_valid? link_url and title_valid? link_title
	      			links << {link_title => link_url}
	    			end
	      	end
	      end
	    end
    	links
    	#handle errors!
		end

		def link_is_new?(tag_group, url) 
			!(tag_group.hits.find_by_url url)
		end

		def link_contains_tag?(tag_group, title) 
			tag_group.tags.each do |tag|
				if title.downcase.include? tag.value.downcase
					return true
				end
			end
			false
		end

		def title_valid?(title)
			
			title.strip!

			title.sub! '\t', ''
			title.sub! '\n', ''

			if title.length <= 2
				return false
			end
			true
		end

		def url_valid?(url)
			begin
			  uri = URI.parse(url)
			  uri.kind_of?(URI::HTTP)
			rescue URI::InvalidURIError
		  	false
		  end
		end

		#tranforms relative urls to absolute ones
		def fix_url(feed_url, link_url)

			#wspecial handling for links that start with ../ or ./
			#if sth
			#end

			#testiraj jabuk forum..tam so ful problemi.. 
			
			uri = Addressable::URI.parse(feed_url)
			if !link_url.include? "http"
				link_url = uri.scheme + "://" + uri.host + link_url
			end
			link_url
		end
	end
