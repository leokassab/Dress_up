class Shop < ApplicationRecord
  has_many :clothes
  has_many_attached :photos

  def brand
    brand_name
  end
end
