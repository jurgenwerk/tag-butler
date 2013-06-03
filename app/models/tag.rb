class Tag < ActiveRecord::Base
	extend FriendlyId
  friendly_id :value, :use => :slugged

  attr_accessible :value, :tag_group_id
  belongs_to :tag_group

  def to_param
		friendly_id
	end
end
