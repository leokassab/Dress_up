class TagsController < ApplicationController
  before_action :set_tags, only: [ :show, :destroy ]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def create
    @new_tag = Tag.new(tag_params)
    if Tag.create(name: params[:tag][:name], user_id: current_user.id)
      redirect_to clothe_path(params[:tag][:clothe_id])
    else
      render :new
    end
  end

  def destroy
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
