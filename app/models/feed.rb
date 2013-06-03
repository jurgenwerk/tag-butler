class Feed < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :url, :name, :tag_group_id

  belongs_to :tag_group

  def to_param
		friendly_id
	end
end
