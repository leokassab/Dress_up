class OutfitsController < ApplicationController
  before_action :find_outfit, only: [ :show, :destroy ]
  before_action :new_outfit, only: [ :new, :create ]

  def new
    # @outfit = Outfit.new(review_params)
  end

  def destroy
    @outfit.destroy
    # redirect_to outfits_path
  end

  def create
    @user = User.find(params[:user_id])
    @outfit.user = @user
    if @outfit.save
      # redirect_to outfit_path(@outfit)
    else
      render :new
    end
  end

  def show
  end

  def index
    Outfit.all
  end

  private

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end

  def review_params
    params.require(:user).permit(:height :body_shape :skin_tone :waist_circ :chest_circ :hip_circ)
  end

  def new_outfit
    @outfit = Outfit.new(review_params)
  end
end
