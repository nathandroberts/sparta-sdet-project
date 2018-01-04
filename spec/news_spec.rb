require 'spec_helper'

describe UfcApi do

  before(:all) do
    @news = UfcApi.new.news_service
  end

  it "should return an integer for id" do
    expect(@news.get_id).to be_a(Integer)
  end

end
