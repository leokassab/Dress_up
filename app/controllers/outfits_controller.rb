class OutfitsController < ApplicationController
  before_action :find_outfit, only: [ :show, :destroy ]

  def new
    @outfit = Outfit.new
  end

  def destroy
    @outfit.destroy
    redirect_to outfits_path
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    if @outfit.save
      @head = ClothesOutfit.create(clothe_id: params[:head], outfit_id: @outfit.id)
      # innjecter les 3 clothes
          #   redirect_to outfit_path(@outfit)
          # else
    #   render :new
    end
  end

  def show
  end

  def index
    @outfits = Outfit.all
  end

  private

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:height, :body_shape, :skin_tone, :waist_circ, :chest_circ, :hip_circ, :user_name)
  end

  def outfit_params
    params.require(:outfit).permit(:name)
  end

end
