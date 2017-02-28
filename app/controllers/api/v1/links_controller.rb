class Api::V1::LinksController < Api::V1::ApiController
  
  def create
    link = params["urlToSend"]
    found_link = Link.find_or_create_by(url: link)
    reads = found_link.read_count
    if reads.nil? || reads < 1
      found_link.update(read_count: 1)
    else
      found_link.update(read_count: found_link.read_count + 1)
    end
  end
  
end