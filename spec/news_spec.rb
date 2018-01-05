require 'spec_helper'

describe UfcApi do

  before(:all) do
    @news = UfcApi.new.news_service
  end
 context 'news api' do

   it "should return an integer for id" do
     expect(@news.get_id).to be_a(Integer)
   end

   it "should return a string for external_url_text" do
     if @news.get_external_url_text
       expect(@news.get_external_url_text).to be_a(String)
     end
   end

   it "should return a string for author" do
     if @news.get_author
       expect(@news.get_author).to be_a(String)
     end
   end

   it "should return a string for title" do
     expect(@news.get_title).to be_a(String)
   end

   it "should return an integer for article_media_id" do
     if @news.get_article_media_id
       expect(@news.get_article_media_id).to be_a(Integer)
     end
   end

   it "should return a string for article_date" do
     expect(@news.get_article_date).to be_a(String)
   end

   it "should return a string for thumbnail" do
     if @news.get_thumbnail
       expect(@news.get_thumbnail).to be_a(String)
     end
   end

   it "should return a link for thumbnail" do
     if @news.get_thumbnail != ''
       expect(@news.get_thumbnail[0,7]).to eq('http://')
     end
   end

   it "should return a string for external_url" do
     if @news.get_external_url
       expect(@news.get_external_url).to be_a(String)
     end
   end

   it "should return a link for external_url" do
     if @news.get_external_url != ''
       expect(@news.get_external_url[0,7]).to eq('http://')
     end
   end

   it "should return a string for introduction" do
     if @news.get_introduction
       expect(@news.get_introduction).to be_a(String)
     end
   end

   it "should return an integer for article_fighter_id" do
     if @news.get_article_fighter_id
       expect(@news.get_article_fighter_id).to be_a(Integer)
     end
   end

   it "should return a string for featured_news_category" do
     if @news.get_featured_news_category
       expect(@news.get_featured_news_category).to be_a(String)
     end
   end

   it "should return a string for last_modified" do
     if @news.get_last_modified
       expect(@news.get_last_modified).to be_a(String)
     end
   end

   it "should return a string for url_name" do
     if @news.get_url_name
       expect(@news.get_url_name).to be_a(String)
     end
   end

   it "should return a string for created" do
     if @news.get_created
       expect(@news.get_created).to be_a(String)
     end
   end

   it "should return a string for published_start_date" do
     if @news.get_published_start_date
       expect(@news.get_published_start_date).to be_a(String)
     end
   end
 end

end
