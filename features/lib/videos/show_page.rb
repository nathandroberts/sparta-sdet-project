require 'capybara'

class UfcShowPage
  include Capybara::DSL

  NEWS_LINK = 'News' unless const_defined?(:NEWS_LINK)
  MEDIA_LINK = 'Media' unless const_defined?(:MEDIA_LINK)
  TITLE_HOLDERS_LINK = 'Title Holders' unless const_defined?(:TITLE_HOLDERS_LINK)
  VIDEOS_LINK = 'Videos' unless const_defined?(:VIDEOS_LINK)
  SUBMIT_NEW_VIDEO_LINK = 'Submit new video' unless const_defined?(:SUBMIT_NEW_VIDEO_LINK)
  EDIT_BUTTON_LINK = 'edit' unless const_defined?(:EDIT_BUTTON_LINK)
  DELETE_BUTTON_ID = 'delete_button' unless const_defined?(:DELETE_BUTTON_ID)

  def click_edit_button
    click_link(EDIT_BUTTON_LINK)
  end

  def click_delete_button
    find_button(DELETE_BUTTON_ID).click
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
