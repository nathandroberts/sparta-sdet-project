require "sinatra"
require 'sinatra/reloader' if development?
require 'pg'
require "httparty"
require "json"
require_relative './models/video.rb'
require_relative './controllers/videos_controller.rb'

use Rack::MethodOverride

run VideosController
