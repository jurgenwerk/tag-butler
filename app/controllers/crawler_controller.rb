class CrawlerController < ApplicationController
	include CrawlerHelper

	require 'nokogiri'
	require 'open-uri'

  def crawl_all
  	User.all.each do |user|
  		user.tag_groups.each do |tag_group|
  			crawl_group tag_group
  		end
  	end
  end
end
