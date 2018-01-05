require "httparty"
require "json"

class MediaService
  include HTTParty

  attr_accessor :media_data

  def initialize
    @media_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/media").body)
  end

  def get_id
    @media_data[0]['id']
  end

  def get_media_date
    @media_data[0]['media_date']
  end



end
