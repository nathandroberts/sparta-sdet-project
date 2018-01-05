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

 end

end
