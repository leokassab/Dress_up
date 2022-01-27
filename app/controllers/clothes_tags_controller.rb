class ClothesTagsController < ApplicationController
  def create
    @clothe = Clothe.find(params[:id])
    @clothes_tags = ClotheTag.new
    @clothes_tags.user = current_user
    if @clothes_tags.save
      redirect_to clothe_path(@clothe)
    end
  end
end
