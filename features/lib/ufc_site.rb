require_relative '../lib/api/media_page'
require_relative '../lib/api/news_page'
require_relative '../lib/api/search_page'
require_relative '../lib/api/title_holders_page'
require_relative '../lib/videos/edit_page'
require_relative '../lib/videos/videos_page'
require_relative '../lib/videos/submit_new_video_page'
require_relative '../lib/videos/show_page'

module UfcSite

  def what_page(name)
    if name == 'news'
      news_page.visit_news_page
    elsif name == 'media'
      media_page.visit_media_page
    elsif name == 'title_holders'
      title_holders_page.visit_title_holders_page
    elsif name == 'videos'
      videos_page.visit_videos_page
    elsif name == 'submit_new_video'
      submit_new_video_page.visit_submit_new_video_page
    end
  end

  def what_link(name)
    if name == 'news'
      media_page.news_link
    elsif name == 'media'
      media_page.media_link
    elsif name == 'title_holders'
      media_page.title_holders_link
    elsif name == 'videos'
      media_page.videos_link
    elsif name == 'submit_new_video'
      media_page.submit_new_video_link
    end
  end

  def media_page
    UfcMediaPage.new
  end

  def news_page
    UfcNewsPage.new
  end

  def search_page
    UfcSearchPage.new
  end

  def title_holders_page
    UfcTitleHoldersPage.new
  end

  def edit_page

  end

  def videos_page
    UfcVideosPage.new
  end

  def submit_new_video_page
    UfcSubmitNewVideoPage.new
  end

  def show_page

  end


end
