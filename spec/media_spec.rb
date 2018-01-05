require 'spec_helper'

describe UfcApi do

  before(:all) do
    @media = UfcApi.new.media_service
  end
 context 'media api' do

   it "should return an integer for id" do
     expect(@media.get_id).to be_a(Integer)
   end

   it "should return a string for media_date" do
     expect(@media.get_media_date).to be_a(String)
   end

   it "should return a string for type" do
     expect(@media.get_type).to be_a(String)
   end

   it "should return a string for description" do
     expect(@media.get_description).to be_a(String)
   end

   it "should return a string for description" do
     if @media.get_description
       expect(@media.get_description).to be_a(String)
     end
   end

   it "should return a string for more_link_text" do
     if @media.get_more_link_text
       expect(@media.get_more_link_text).to be_a(String)
     end
   end

   it "should return a string for thumbnail" do
     if @media.get_thumbnail
       expect(@media.get_thumbnail).to be_a(String)
     end
   end

   it "should return a link for thumbnail" do
     if @media.get_thumbnail != ''
       expect(@media.get_thumbnail[0,7]).to eq('http://')
     end
   end

   it "should return a string for internal_url" do
     if @media.get_internal_url
       expect(@media.get_internal_url).to be_a(String)
     end
   end

   it "should return a string for title" do
     if @media.get_title
       expect(@media.get_title).to be_a(String)
     end
   end

   it "should return a string for more_link_url" do
     if @media.get_more_link_url
       expect(@media.get_more_link_url).to be_a(String)
     end
   end

   it "should return a string for embedded_type" do
     if @media.get_embedded_type
       expect(@media.get_embedded_type).to be_a(String)
     end
   end

   it "should return a Integer for embedded_id" do
     if @media.get_embedded_id != ''
       expect(@media.get_embedded_id).to be_a(Integer)
     end
   end

   it "should return a string for mobile_stream_url" do
     if @media.get_mobile_stream_url
       expect(@media.get_mobile_stream_url).to be_a(String)
     end
   end

   it "should return a string for thumbnail" do
     if @media.get_thumbnail
       expect(@media.get_thumbnail).to be_a(String)
     end
   end

   it "should return a string for mobile_video_url" do
     if @media.get_mobile_video_url
       expect(@media.get_mobile_video_url).to be_a(String)
     end
   end

   it "should return a link for mobile_video_url" do
     if @media.get_mobile_video_url != ''
       expect(@media.get_mobile_video_url[0,7]).to eq('http://')
     end
   end

   it "should return a string for last_modified" do
     if @media.get_last_modified
       expect(@media.get_last_modified).to be_a(String)
     end
   end

   it "should return a string for url_name" do
     if @media.get_url_name
       expect(@media.get_url_name).to be_a(String)
     end
   end

   it "should return a string for created" do
     if @media.get_created
       expect(@media.get_created).to be_a(String)
     end
   end

   it "should return a string for published_start_date" do
     if @media.get_published_start_date
       expect(@media.get_published_start_date).to be_a(String)
     end
   end

 end

end
