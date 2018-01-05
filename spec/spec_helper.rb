require "json"
require_relative "../controllers/videos_controller"
require_relative "../lib/ufc_api"
require_relative "../models/video"
require 'httparty'
require 'rack/test'
require 'pg'


RSpec.configure do |config|
  config.formatter = :documentation
end
