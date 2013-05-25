class Tag < ActiveRecord::Base
  attr_accessible :value
  belongs_to :feed

  def to_param
		value
	end
end
