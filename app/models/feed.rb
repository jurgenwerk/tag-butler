class Feed < ActiveRecord::Base
  attr_accessible :url, :name, :id

  belongs_to :user
  has_many :hits, :dependent => :destroy
  has_many :tags, :dependent => :destroy

  def to_param
		name
	end
end
