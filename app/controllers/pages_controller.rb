class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end

  def avatar
    @user = current_user
    @clothe = Clothe.find(params[:clothe_id])
    #défniir el s4 listes de clothes quo'n veut afficher.
    @head = Clothe.where(category: "head")
    @outfit = Outfit.new
  end
end
