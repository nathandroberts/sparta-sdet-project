class UfcSubmitNewVideoPage
  include Capybara::DSL

  NEWS_LINK = 'News' unless const_defined?(:NEWS_LINK)
  MEDIA_LINK = 'Media' unless const_defined?(:MEDIA_LINK)
  TITLE_HOLDERS_LINK = 'Title Holders' unless const_defined?(:TITLE_HOLDERS_LINK)
  VIDEOS_LINK = 'Videos' unless const_defined?(:VIDEOS_LINK)
  SUBMIT_NEW_VIDEO_LINK = 'Submit new video' unless const_defined?(:SUBMIT_NEW_VIDEO_LINK)
  TITLE_FIELD_ID = 'title' unless const_defined?(:TITLE_FIELD_ID)
  DESCRIPTION_FIELD_ID = 'description' unless const_defined?(:DESCRIPTION_FIELD_ID)
  EMBED_FIELD_ID = 'embed' unless const_defined?(:EMBED_FIELD_ID)
  THUMBNAIL_FIELD_ID = 'thumbnail' unless const_defined?(:THUMBNAIL_FIELD_ID)
  SAVE_BUTTON_ID = 'save' unless const_defined?(:SAVE_BUTTON_ID)

  def visit_submit_new_video_page
    visit('/videos/new')
  end

  def fill_in_title(title)
    fill_in(TITLE_FIELD_ID, with: title)
  end

  def fill_in_description(description)
    fill_in(DESCRIPTION_FIELD_ID, with: description)
  end

  def fill_in_embed(embed)
    fill_in(EMBED_FIELD_ID, with: embed)
  end

  def fill_in_thumbnail(thumbnail)
    fill_in(THUMBNAIL_FIELD_ID, with: thumbnail)
  end

  def click_save
    find_button(SAVE_BUTTON_ID).click
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
