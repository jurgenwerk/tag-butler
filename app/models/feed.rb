class Feed < ActiveRecord::Base
  attr_accessible :url

  belongs_to :user
  has_many :hits
end
