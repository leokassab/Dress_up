class ClothesTagsController < ApplicationController

  def create
    @clothes_tag = ClothesTag.new(clothes_tag_params)

    unless ClothesTag.where(clothe_id: params[:clothe_id]).blank?
      ClothesTag.where(clothe_id: params[:clothe_id]).destroy_all
    end

    @clothes_tag.clothe_id = params[:clothe_id]

    params[:clothes_tag][:tag_id].each do |t|
      unless t.blank?
        ClothesTag.create(clothe_id: params[:clothe_id], tag_id: t)
      end
    end
    redirect_to clothe_path(params[:clothe_id])
  end

  private

  def clothes_tag_params
    params.require(:clothes_tag).permit(:clothe_id, :tag_id)
  end
end
