class Link < ActiveRecord::Base
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, :url => true
  validates :url, :url => {:no_local => true}
  
  def self.get_from_url_lock_box
    result = Faraday.get('https://intense-eyrie-69232.herokuapp.com/api/v1/links')
    binding.pry
  end
  
end