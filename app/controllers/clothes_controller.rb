class ClothesController < ApplicationController

  before_action :find_clothe, only: [ :show, :destroy, :update, :favorite]

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

  def edit
  end

  def update
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
      sql_query = "name ILIKE :query OR color ILIKE :query"
      @clothes = @clothes.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'clothes/clothes_list', locals: { clothes: @clothes }, formats: [:html] }
    end
  end

  def filter
    @clothes = Clothe.all
    colors = params[:search][:colors]
    categories = params[:search][:categories]
    tags = params[:search][:tags]
    if colors
      @clothes = @clothes.where(color: colors)
    end
    if categories
      @clothes = @clothes.where(category: categories)
    end
    if tags
      @clothes = @clothes.joins(:clothes_tags).where(clothes_tags: {tag: tags})
    end
    render :index
  end


  def update
    @clothe.update(clothes_params)

    respond_to do |format|
      format.html { redirect_to clothe_path(@clothe) }
      format.text { render partial: 'clothes/clothe_information', locals: { clothe: @clothe }, formats: [:html] }
    end
  end


  def favorite
    p 'FAVORITE==='
    @clothe.update(bookmark: !@clothe.bookmark)
  end

  private

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end

  def clothes_params
    params.require(:clothe).permit(:category, :bookmark, :brand, :size, :color, :material, :product_ref, :name, :clothes_tags_attributes => [:clothe_id, :tag_id])
  end


end
