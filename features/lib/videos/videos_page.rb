require 'capybara'

class UfcVideosPage
  include Capybara::DSL

  NEWS_LINK = 'News' unless const_defined?(:NEWS_LINK)
  MEDIA_LINK = 'Media' unless const_defined?(:MEDIA_LINK)
  TITLE_HOLDERS_LINK = 'Title Holders' unless const_defined?(:TITLE_HOLDERS_LINK)
  VIDEOS_LINK = 'Videos' unless const_defined?(:VIDEOS_LINK)
  SUBMIT_NEW_VIDEO_LINK = 'Submit new video' unless const_defined?(:SUBMIT_NEW_VIDEO_LINK)
  FIGHTER_SEARCH_FIELD_ID = 'fighter_search_field' unless const_defined?(:FIGHTER_SEARCH_FIELD_ID)
  FIGHTER_SEARCH_BUTTON_ID = 'fighter_search_button' unless const_defined?(:FIGHTER_SEARCH_BUTTON_ID)



  def visit_videos_page
    visit('/videos')
  end

  def fill_in_fighter_search(name)
    fill_in(FIGHTER_SEARCH_FIELD_ID, with: name)
  end

  def click_fighter_search
    find_button(FIGHTER_SEARCH_BUTTON_ID).click
  end

  def video_title_search(text_input)
    find('h3', text: text_input, exact: true)
  end

  def click_chosen_video(name)
    click_link(name)
  end

  def news_link
    click_link(NEWS_LINK)
  end

  def media_link
    click_link(MEDIA_LINK)
  end

  def title_holders_link
    click_link(TITLE_HOLDERS_LINK)
  end

  def videos_link
    click_link(VIDEOS_LINK)
  end

  def submit_new_video_link
    click_link(SUBMIT_NEW_VIDEO_LINK)
  end

  def title_check(name)
    find(:id, name)
  end

end
