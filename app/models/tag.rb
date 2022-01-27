class Tag < ApplicationRecord
  belongs_to :user
  has_many :clothe_tags
  has_many :outfit_tags
end
