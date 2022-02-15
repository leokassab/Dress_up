class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(param[:id])
  end

  def new
    @shop = Shop.new(shop_params)
  end

  private

  def shop_params
    params.require(:shop).permit(:brand_name, :description)
  end
end
