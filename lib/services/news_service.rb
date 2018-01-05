require "httparty"
require "json"

class NewsService
  include HTTParty

  attr_accessor :news_data

  def initialize
    @news_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/news").body)
  end

  def get_id
    @news_data[0]['id']
  end

  def get_external_url_text
    @news_data[0]['external_url_text']
  end

  def get_author
    @news_data[0]['author']
  end

  def get_title
    @news_data[0]['title']
  end

  def get_article_media_id
    @news_data[0]['article_media_id']
  end

  def get_article_date
    @news_data[0]['article_date']
  end

  def get_thumbnail
    @news_data[0]['thumbnail']
  end

  def get_external_url
    @news_data[0]['external_url']
  end

  def get_introduction
    @news_data[0]['introduction']
  end

  def get_article_fighter_id
    @news_data[0]['article_fighter_id']
  end

  def get_featured_news_category
    @news_data[0]['featured_news_category']
  end

  def get_last_modified
    @news_data[0]['last_modified']
  end

  def get_url_name
    @news_data[0]['url_name']
  end

  def get_created
    @news_data[0]['created']
  end

  def get_published_start_date
    @news_data[0]['published_start_date']
  end

end
