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
      ClothesOutfit.create(clothe_id: params[:outfit][:head_id], outfit_id: @outfit.id)
      ClothesOutfit.create(clothe_id: params[:outfit][:chest_id], outfit_id: @outfit.id)
      ClothesOutfit.create(clothe_id: params[:outfit][:leg_id], outfit_id: @outfit.id)
      ClothesOutfit.create(clothe_id: params[:outfit][:foot_id], outfit_id: @outfit.id)
      outfit_image
      redirect_to outfits_path
      else
      render :new
    end
  end

  def outfit_image
    puts (@outfit)
    @ids =[]
    ClothesOutfit.where(outfit_id: @outfit.id).order(id: :asc).each do |el|
      @ids << Clothe.find(el.clothe_id)
    end
    puts(render_to_string)
    @kit = IMGKit.new(render_to_string)
    file = @kit.to_file('/tmp/template_#{@outfit.id.to_s}.jpg')
    @outfit.photo.attach(io: File.open('/tmp/template_#{@outfit.id.to_s}.jpg'), filename: 'outfit.jpg', content_type: 'image/jpg')

    @outfit.save
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
