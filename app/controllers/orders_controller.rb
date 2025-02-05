class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def create
    @coin = Coin.find(params[:order][:coin_id])
    if current_user
      @wallet = Wallet.find(params[:wallet_id])
      @order = @wallet.orders.build(order_params)
      @portfolio = Portfolio.find_by(coin_id: @coin.id)
    end
    if @order.save
      # redirect_to trade_path(@coin)
      redirect_to trade_path(base: @coin.base, target: @coin.target, id:@coin.id)
    else
      redirect_to trade_path(base: @coin.base)
      flash[:notice] = "insufficient balance"
    end

  end

  private 
  
  def order_params
    params.require(:order).permit(:price, :quantity, :kind, :coin_id).merge!(coin_id: @coin.id)
  end
end
