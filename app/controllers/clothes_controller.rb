class ClothesController < ApplicationController
  before_action :find_clothe, only: [ :show, :destroy ]
  before_action :new_clothe, only: [ :new, :create ]
  # before_action :

  def new
  end

  def destroy
    @clothe.destroy
    # redirect_to clothes_path
  end

  def create
    @user = User.find(params[:user_id])
    @clothe.user = @user
    if @clothe.save
      # redirect_to clothe_path(@clothe)
    else
      render :new
    end
  end

  def show
  end

  def index
    Clothe.all
  end

  private

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end

  # def clothes_params
  #   params.require(:user).permit(:height, :body_shape, :skin_tone, :waist_circ, :chest_circ, :hip_circ)
  # end

  def new_clothe
    @review = Clothe.new #(clothes_params)
  end

end
