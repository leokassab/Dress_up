class Outfit < ApplicationRecord
  belongs_to :user
  has_many clothes_outfits:
  has_many outfit_tags:
end
