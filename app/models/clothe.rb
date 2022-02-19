class Clothe < ApplicationRecord
  belongs_to :user
  belongs_to :shop, required: false
  has_many :clothes_outfits
  has_many :clothes_tags
  has_one_attached :photo
  has_many :tags, through: :clothes_tags
  delegate :brand, to: :shop
end
