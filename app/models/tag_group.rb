class TagGroup < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, :use => :slugged

  attr_accessible :name, :user_id, :id

  belongs_to :user
  has_many :feeds, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  has_many :hits, :dependent => :destroy

  def to_param
		friendly_id
	end
end
