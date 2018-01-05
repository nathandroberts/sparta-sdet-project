require_relative 'services/news_service'
require_relative 'services/media_service'
require_relative 'services/fighters_service'
require_relative 'services/title_holders_service'
require_relative 'services/fighter_media_service'

class UfcApi

  def news_service
    NewsService.new
  end


  def media_service
    MediaService.new
  end
end
