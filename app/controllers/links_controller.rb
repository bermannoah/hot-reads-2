class LinksController < ApplicationController
  def index
    now = Time.now
    @hot_links = Link.get_from_url_lock_box
  end
end