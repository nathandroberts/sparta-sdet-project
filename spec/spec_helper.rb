require "json"
require_relative "../controllers/videos_controller"
require_relative "../lib/ufc_api"
require 'httparty'
require 'rack/test'

RSpec.configure do |config|
  config.formatter = :documentation
end
