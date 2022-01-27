class ClothesOutfitsController < ApplicationController
  def create
    @clothe = Clothe.find(params[:id])
    @clothes_outfit = ClothesOutfit.new
    @clothes_outfit.user = current_user
    if @clothes_outfit.save
      redirect_to outfit_path(@outfit)
    end
  end
end
