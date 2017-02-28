class Link < ActiveRecord::Base
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, :url => true
  validates :url, :url => {:no_local => true}
end