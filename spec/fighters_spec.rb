require 'spec_helper'

describe UfcApi do

  before(:all) do
    @fighters = UfcApi.new.fighters_service
  end
 context 'fighters api' do

   it "should return a string for first_name" do
     expect(@fighters.get_first_name).to be_a(String)
   end

   it "should return a string for last_name" do
     expect(@fighters.get_last_name).to be_a(String)
   end

   it "should return a string for link" do
     expect(@fighters.get_link).to be_a(String)
   end

   it "should return a link for link" do
     expect(@fighters.get_link[0,4]).to eq('http')
   end

   it "should return an integer for wins" do
     expect(@fighters.get_wins).to be_a(Integer)
   end

   it "should return an integer for losses" do
     expect(@fighters.get_losses).to be_a(Integer)
   end

   it "should return an integer for draws" do
     expect(@fighters.get_draws).to be_a(Integer)
   end

 end

end
