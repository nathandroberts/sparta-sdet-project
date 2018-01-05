require "httparty"
require "json"

class TitleHolderService
  include HTTParty

  def initialize
    @title_holder_data = JSON.parse(self.class.get("http://ufc-data-api.ufc.com/api/v3/iphone/fighters/title_holders").body)
  end

  def get_first_name
    @title_holder_data[0]['first_name']
  end

  def get_last_name
    @title_holder_data[0]['last_name']
  end

  def get_link
    @title_holder_data[0]['link']
  end

  def get_weight_class
    @title_holder_data[0]['weight_class']
  end

  def get_wins
    @title_holder_data[0]['wins']
  end

  def get_losses
    @title_holder_data[0]['losses']
  end

  def get_draws
    @title_holder_data[0]['draws']
  end

  def get_belt_thumbnail
    @title_holder_data[0]['belt_thumbnail']
  end

end
