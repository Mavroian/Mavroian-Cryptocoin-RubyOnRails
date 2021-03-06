
class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  
  require 'net/http'
  require 'uri'
  require 'json'

  uri = URI.parse("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest")
  request = Net::HTTP::Get.new(uri)
  request["X-Cmc_pro_api_key"] = "e61e9e0d-81b2-4718-805d-863cb7772d19"
  request["Accept"] = "application/json"


  req_options = {
  use_ssl: uri.scheme == "https",
  }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
  end

  @raw = JSON.parse(response.body)
  @coins = @raw["data"]
  @err = "<svg><!-- SVG file not found: 'NANO' (Try adding .svg to your filename) --></svg>"
  end

  def about
  end

  def lookup
    require 'net/http'
    require 'uri'
    require 'json'

    uri = URI.parse("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest")
    request = Net::HTTP::Get.new(uri)
    request["X-Cmc_pro_api_key"] = "e61e9e0d-81b2-4718-805d-863cb7772d19"
    request["Accept"] = "application/json"

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
    end
    
    @raw = JSON.parse(response.body)
    @search_coin = @raw["data"]

    @symbol = params[:sym]
    if @symbol 
      @symbol = @symbol.upcase
    end
   
     if @symbol == ""
      @symbol = 'Please chose a currency'
     end

  end

end
