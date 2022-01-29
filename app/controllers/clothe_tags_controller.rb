class ClotheTagsController < ApplicationController
  def create
    @clothe = Clothe.find(params[:id])
    @clothe_tag = ClotheTag.new
    @clothe_tag.clothe = @clothe
    @clothe_tag.tag = Tag.find(params[:tag_id])
    if @clothe_tag.save
      redirect_to clothe_path(@clothe)
    else raise
    end
  end
end
