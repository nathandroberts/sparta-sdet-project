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

  def get_type
    @media_data[0]['type']
  end

  def get_description
    @media_data[0]['description']
  end

  def get_more_link_text
    @media_data[0]['more_link_text']
  end

  def get_thumbnail
    @media_data[0]['thumbnail']
  end

  def get_internal_url
    @media_data[0]['internal_url']
  end

  def get_title
    @media_data[0]['title']
  end

  def get_more_link_url
    @media_data[0]['more_link_url']
  end

  def get_embedded_type
    @media_data[0]['embedded_type']
  end

  def get_embedded_id
    @media_data[0]['embedded_id']
  end

  def get_mobile_stream_url
    @media_data[0]['mobile_stream_url']
  end

  def get_mobile_video_url
    @media_data[0]['mobile_video_url']
  end

  def get_last_modified
    @media_data[0]['last_modified']
  end

  def get_url_name
    @media_data[0]['url_name']
  end

  def get_created
    @media_data[0]['created']
  end

  def get_published_start_date
    @media_data[0]['published_start_date']
  end

end
