class Shop < ApplicationRecord
  has_many :clothes
  has_many_attached :photos
end
