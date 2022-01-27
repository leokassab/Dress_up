class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    set_tags
  end

  def new
    @taf = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def destroy
    set_tags
    @tag.destroy
    redirect_to tags_path
  end

  private

  def set_tags
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
