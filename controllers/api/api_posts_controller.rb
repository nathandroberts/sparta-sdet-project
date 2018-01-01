class ApiPostsController < Sinatra::Base


  def initialize
    @title_holder_data = nil
  end


  def get_title_holders
    @title_holder_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/fighters/title_holders").body)
  end

  get '/api' do

    @title = 'Homepage of video site'
    erb :'videos/home'

  end

end
