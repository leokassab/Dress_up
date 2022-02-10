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
    @clothes_tag = ClothesTag.new
    @new_tag = Tag.new
  end

  def index

    if params[:tag_id]
      @clothes = Tag.find(params[:tag_id]).clothes
    else
      @clothes = current_user.clothes
    end

    if params[:query].present?
      sql_query = "name ILIKE :query OR brand ILIKE :query"
      @clothes = @clothes.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'clothes/clothes_list', locals: { clothes: @clothes }, formats: [:html] }
    end
  end

  private

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end

  def clothes_params
    params.require(:clothe).permit(:category, :bookmark, :brand, :size, :colour, :material, :product_ref, :name, :clothes_tags_attributes => [:clothe_id, :tag_id])
  end


end
