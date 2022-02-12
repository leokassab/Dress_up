class Shop < ApplicationRecord
  has_many :clothes
  has_one_attached :photo
end
