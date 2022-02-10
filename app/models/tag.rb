class Tag < ApplicationRecord
  belongs_to :user
  has_many :clothes_tags
  has_many :outfit_tags
  has_many :clothes, through: :clothes_tags
end
