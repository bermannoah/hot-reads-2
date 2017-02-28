require 'rails_helper'

describe Api::V1::LinksController, type: :controller do
  context "create" do
    scenario "it makes a new link" do      
      post :create, params: { urlToSend: "https://zombo.com" }   
      
      expect(response).to have_http_status(204)
      expect(Link.first.read_count).to eq(1)
    end

    scenario "it increments the count" do
      Link.create!(url: "https://zombo.com", read_count: 10)
      expect(Link.first.read_count).to eq(10)
      
      post :create, params: { urlToSend: "https://zombo.com" }   
      post :create, params: { urlToSend: "https://zombo.com" }   
      
      expect(response).to have_http_status(204)
      expect(Link.first.read_count).to eq(12)
    end
  end
end