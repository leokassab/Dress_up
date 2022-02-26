class Clothe < ApplicationRecord
  belongs_to :user
  belongs_to :shop, required: false
  has_many :clothes_outfits
  has_many :clothes_tags
  has_one_attached :photo
  has_many :tags, through: :clothes_tags
  delegate :brand, to: :shop, allow_nil: true

  # def filter_by_color
  #   params[:search][:colors].first
  # end
end
