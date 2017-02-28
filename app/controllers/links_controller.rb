class LinksController < ApplicationController
  def index
    now = Time.now
    @links = Link.where(updated_at: (now - 24.hours)..Time.now).order(read_count: :DESC).limit(10)
  end
end