class Clothe < ApplicationRecord
  belongs_to :user
  has_many :clothes_outfits
  has_many :clothe_tags
end
