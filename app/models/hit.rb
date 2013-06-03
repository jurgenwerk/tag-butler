class Hit < ActiveRecord::Base
  attr_accessible :url, :title
  belongs_to :tag_group
end
