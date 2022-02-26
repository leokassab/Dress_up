class PagesController < ApplicationController

  def home
    @user = current_user
  end

  def avatar
    @user = current_user

    unless params[:clothe_id].nil?
      @clothe = Clothe.find(params[:clothe_id])
    end

    #défniir el s4 listes de clothes quo'n veut afficher.
    @head = Clothe.where(category: "Head")
    @leg = Clothe.where(category: "Leg")
    @chest = Clothe.where(category: "Chest")
    @foot = Clothe.where(category: "Foot")
    @outfit = Outfit.new
  end

  # def filter_avatar
  #   @clothes = Clothe.all
  #   colors = params[:search][:colors]
  #   categories = params[:search][:categories]
  #   tags = params[:search][:tags]
  #   if colors
  #     @clothes = @clothes.where(color: colors)
  #   end
  #   if categories
  #     @clothes = @clothes.where(category: categories)
  #   end
  #   if tags
  #     @clothes = @clothes.joins(:clothes_tags).where(clothes_tags: {tag: tags})
  #   end
  #   render "pages/avatar"

# @clothes.where(category: "Chest", color: "black")

  # end

end
