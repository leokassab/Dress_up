class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def avatar
    @user = current_user
    #défniir el s4 listes de clothes quo'n veut afficher.
    @head = Clothe.where(catagory: "Head")
    @outfit = Outfit.new
  end
end
