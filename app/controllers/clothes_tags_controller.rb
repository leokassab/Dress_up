class ClothesTagsController < ApplicationController
  def create
    @clothe = Clothe.find(params[:id])
    @clothes_tag = ClotheTag.new
    @clothes_tag.user = current_user
    if @clothes_tag.save
      redirect_to clothe_path(@clothe)
    end
  end
end
