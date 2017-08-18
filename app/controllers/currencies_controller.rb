
class CurrenciesController < ApplicationController
  def index
  end

  def show
  end

  def create
    response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    url = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    @response = JSON.parse(url.body)

    @response.each do |coin|
      @currency = Currency.find_or_create_by(name_sym: coin["name"]+coin["symbol"])
    end
  end


  def update
    response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    url = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    @response = JSON.parse(url.body)

    @response.each do |coin|
      @currency = Currency.find_by(name_sym: coin["name"]+coin["symbol"])
      @currency.name = coin["name"]
      @currency.symbol = coin["symbol"]
      @currency.price_0 = coin["price_usd"]
      @currency.save

    end
  end

end
