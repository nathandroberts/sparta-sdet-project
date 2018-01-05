require 'spec_helper'
describe VideosController do

  include Rack::Test::Methods

  def app
    VideosController.new
  end

  context 'Ufc App'do

    it "displays a news page" do
      get '/news'
      expect(last_response.body).to include("Latest News")
    end

    it "displays a recent clips page" do
      get '/media'
      expect(last_response.body).to include("Recently submitted Clips")
    end

    it "displays a title holders page" do
      get '/titles'
      expect(last_response.body).to include("Current Title Holders")
    end

    it "displays a videos page" do
      get '/videos'
      expect(last_request.path).to eq('/videos')
      expect(last_response.body).to include("Popular Videos")
    end

    it "displays a submit new video page" do
      get '/videos/new'
      expect(last_request.path).to eq('/videos/new')
      expect(last_response.body).to include("New Video")
    end

    it "correctly searches for fighters" do
      get '/search?fighter_search=northcutt'
      expect(last_response.body).to include("Northcutt")
    end


  end
end
