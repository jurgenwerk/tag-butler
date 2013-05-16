class Hit < ActiveRecord::Base
  attr_accessible :url
  belongs_to :feed
end
