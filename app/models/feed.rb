class Feed < ActiveRecord::Base
  attr_accessible :url, :name, :id

  belongs_to :user
  has_many :hits
  has_many :tags

  def to_param
		name
	end
end
