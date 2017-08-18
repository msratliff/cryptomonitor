
class CurrenciesController < ApplicationController
  def index
  end

  def show
  end

  def create
    response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    @url = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    @response = JSON.parse(@url.body)


    @response.each do |coin|
      @currency = Currency.find_or_create_by(name: coin["name"], symbol: coin["symbol"], price_0: coin["price_usd"])
      if @currency.save
      end
    end
  end

end
