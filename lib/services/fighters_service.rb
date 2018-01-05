require "httparty"
require "json"

class FightersService
  include HTTParty

  def initialize
    @fighter_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/fighters").body)
  end

  def get_first_name
    @fighter_data[0]['first_name']
  end

  def get_last_name
    @fighter_data[0]['last_name']
  end

  def get_nickname
    @fighter_data[0]['nickname']
  end

  def get_link
    @fighter_data[0]['link']
  end

  def get_wins
    @fighter_data[0]['wins']
  end

  def get_losses
    @fighter_data[0]['losses']
  end

  def get_draws
    @fighter_data[0]['draws']
  end

  def get_left_full_body_image
    @fighter_data[0]['left_full_body_image']
  end

end
