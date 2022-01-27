class OutfitsTagsController < ApplicationController
  def create
    @outfit = Outfit.find(params[:id])
    @outfit_tag = OutfitTag.new
    @outfit_tag.user = current_user
    if @outfit_tag.save
      redirect_to outfit_path(@outfit)
    end
  end
end
