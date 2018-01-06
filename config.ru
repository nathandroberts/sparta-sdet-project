require "sinatra"
require 'sinatra/reloader' if development?
require 'pg'
require "httparty"
require "json"
require 'rubygems'
require_relative './models/video.rb'
require_relative './controllers/videos_controller.rb'
require './controllers/videos_controller'

use Rack::MethodOverride

run VideosController.new
set :public_folder, Proc.new { File.join(root, "static") }
