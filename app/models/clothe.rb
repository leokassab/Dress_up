class Clothe < ApplicationRecord
  belongs_to :user
  has_many :clothes_outfits
  has_many :clothes_tags
  has_one_attached :photo

  has_many :tags, through: :clothes_tags

end
