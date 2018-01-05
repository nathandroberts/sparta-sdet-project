require 'spec_helper'

describe UfcApi do

  before(:all) do
    @title_holders = UfcApi.new.title_holders_service
  end
 context 'title holders api' do

   it "should return a string for first_name" do
     expect(@title_holders.get_first_name).to be_a(String)
   end

   it "should return a string for last_name" do
     expect(@title_holders.get_last_name).to be_a(String)
   end

   it "should return a string for link" do
     expect(@title_holders.get_link).to be_a(String)
   end

   it "should return a link for link" do
     expect(@title_holders.get_link[0,4]).to eq('http')
   end

   it "should return a string for weight_class" do
     expect(@title_holders.get_weight_class).to be_a(String)
   end

   it "should return an integer for wins" do
     expect(@title_holders.get_wins).to be_a(Integer)
   end

   it "should return an integer for losses" do
     expect(@title_holders.get_losses).to be_a(Integer)
   end

   it "should return an integer for draws" do
     expect(@title_holders.get_draws).to be_a(Integer)
   end

   it "should return a string for belt_thumbnail" do
     expect(@title_holders.get_belt_thumbnail).to be_a(String)
   end

   it "should return a link for belt_thumbnail" do
     expect(@title_holders.get_belt_thumbnail[0,4]).to eq('http')
   end

 end

end
