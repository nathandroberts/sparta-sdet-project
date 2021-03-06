require 'sinatra/base'
# require 'sinatra/reloader'
class VideosController < Sinatra::Base

  # configure :development do
  #   register Sinatra::Reloader
  # end

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, 'views')}


  get '/' do
    @title = 'Homepage of video site'
    erb :'videos/home'
  end

  get '/titles' do
    @title = 'Current Title Holders'
    @title_holder_data = JSON.parse(HTTParty.get("http://ufc-data-api.ufc.com/api/v3/iphone/fighters/title_holders").body)
    erb :'api/title_holders'
  end

  get '/news' do
    @title = 'Latest News'
    @news_data = JSON.parse(HTTParty.get("http://ufc-data-api.ufc.com/api/v3/iphone/news").body)
    erb :'api/news'
  end

  get '/media' do
    @title = 'Recently submitted Clips'
    @media_data = JSON.parse(HTTParty.get("http://ufc-data-api.ufc.com/api/v3/iphone/media").body)
    erb :'api/media'
  end

  get '/search' do
    @title = 'Fighter Search'
    @fighter_data = JSON.parse(HTTParty.get("http://ufc-data-api.ufc.com/api/v3/iphone/fighters").body)
    @name_input = params[:fighter_search]
    erb :'api/search'
  end



  get '/videos' do
    @heading = 'Popular videos'
    # @videos = $videos
    @videos = Video.all
    erb :'videos/index'
  end

  get '/videos/new' do
    @video = Video.new
    erb :'videos/new'
  end

  get '/videos/:id' do
    id = params[:id].to_i
    # @video = $videos[id]
    @video = Video.find(id)
    @subheading = 'Top Comment:'
    erb :'videos/show'
  end

  post '/videos/' do
    video = Video.new


    video.title = params[:title]
    video.body = params[:body]
    video.source = params[:source]
    video.image = params[:image]

    video.save

    redirect "/videos"
  end

  put '/videos/:id' do
    id = params[:id].to_i

    video = Video.find(id)

    video.id = params[:id]
    video.title = params[:title]
    video.body = params[:body]
    video.source = params[:source]
    video.image = params[:image]

    video.save

    redirect '/videos'
  end

  delete '/videos/:id' do

    id = params[:id].to_i

    Video.destroy(id)

    redirect "/videos"
  end

  get '/videos/:id/edit' do
    id = params[:id].to_i

      @video = Video.find(id)

      erb :'videos/edit'
  end
end
