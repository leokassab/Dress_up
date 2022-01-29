class Clothe < ApplicationRecord
  belongs_to :user
  has_many :clothes_outfits
  has_many :clothe_tags
  has_one_attached :photo
end
