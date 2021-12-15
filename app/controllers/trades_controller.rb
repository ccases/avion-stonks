require 'httparty'

class TradesController < ApplicationController
  before_action :set_coins, only: [:index, :show]
  before_action :set_coin, only: [:show, :change_widget]

  def index
    @response = HTTParty.get('https://api.coingecko.com/api/v3/exchanges/binance')
    @coins = Coin.all
  end

  def show
    respond_to :js, :html

    @coins = Coin.all
    # @coin = Coin.find_by(base: params[:base], target: params[:target], id: params[:id])
    @cp_str= "#{@coin.base}#{@coin.target}"
  end

  def change_widget
    respond_to :js, :html
    @cp_str= "#{@coin.base}#{@coin.target}"
  end
  private
  
  def set_coins
    @coins = Coin.all
  end

  def set_coin
    @coin = Coin.find(params[:id])
  end
end
