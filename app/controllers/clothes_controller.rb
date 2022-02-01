class ClothesController < ApplicationController
  before_action :find_clothe, only: [ :show, :destroy ]

  def new
    @clothe = Clothe.new
  end

  def destroy
    @clothe.destroy
    redirect_to clothes_path
  end

  def create
    @clothe = Clothe.new(clothes_params)
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothe_path(@clothe)
    else
      render :new
    end
  end

  def show
    @tags = current_user.tags
  end

  def index
    @clothes = current_user.clothes
  end

  private

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end

  def clothes_params
    params.require(:clothe).permit(:category, :bookmark, :brand, :size, :colour, :material, :product_ref, :name)
  end

end
