require "httparty"
require "json"

class NewsService
  include HTTParty

  attr_accessor :news_data

  def initialize
    @news_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/news").body)
  end

  # base_uri 'http://ufc-data-api.ufc.com/api/v3/iphone/news'

  def get_id
    @news_data[0]['id']
  end

end
