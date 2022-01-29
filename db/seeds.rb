# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts "Cleaning database..."
OutfitTag.destroy_all
ClotheTag.destroy_all
ClotheOutfit.destroy_all
Outfit.destroy_all
Tag.destroy_all
Clothe.destroy_all
User.destroy_all

# ADD 2 seller
puts "Start creating DB"

puts "--------------------------------------------------------------------------"
puts "create Adriana"
adriana = User.create(
  email: "adriana@dressup.com",
  password: "123456",
  user_name: "Adriana",
  height: 180,
  body_shape: "hourglass",
  skin_tone: "white",
  waist_circ: 60,
  chest_circ: 90,
  hip_circ: 90,
  id: 1
)
puts "Finished!"

puts "create Naomi"
naomi = User.create(
  email: "naomi@dressup.com",
  password: "123456",
  user_name: "Naomi",
  height: 175,
  body_shape: "hourglass",
  skin_tone: "black",
  waist_circ: 65,
  chest_circ: 85,
  hip_circ: 95,
  id: 2
)
puts "Finished!"

puts "--------------------------------------------------------------------------"

puts "Creating clothes ..."

# for i in 1..50
#   clothe = Clothe.new(
#       id: i
#       category: "Feet",
#       bookmark: [true, false].sample,
#       brand: Faker::Artist.name,
#       size: prng.rand(34..42),
#       colour: Faker::Color.color_name,
#       material: Faker::Commerce.material,
#       product_ref: prng.rand(1..1000000),
#       user_id: prng.rand(1..2)
#     )
#   puts "Created clothe #{clothe.id}"
# end

CLOUD_LEG = ["https://res.cloudinary.com/detkinqcf/image/upload/v1643464202/Clothes/1-removebg-preview_vt05fp.png",
              "https://res.cloudinary.com/detkinqcf/image/upload/v1643464202/Clothes/3-removebg-preview_q1vuzf.png",
              "https://res.cloudinary.com/detkinqcf/image/upload/v1643464202/Clothes/2-removebg-preview_lkbjyb.png"]

CLOUD_CHEST = ["https://res.cloudinary.com/detkinqcf/image/upload/v1643463632/Clothes/2_xgsuyn.png",
                "https://res.cloudinary.com/detkinqcf/image/upload/v1643463626/Clothes/3_fzyz8t.png",
                "https://res.cloudinary.com/detkinqcf/image/upload/v1643463618/Clothes/1_pti9ma.png"]

]

for i in 51..75
  clothe = Clothe.new(
      id: i
      category: "Leg",
      bookmark: [true, false].sample,
      brand: Faker::Artist.name,
      size: prng.rand(34..42),
      colour: Faker::Color.color_name,
      material: Faker::Commerce.material,
      product_ref: prng.rand(1..1000000),
      user_id: prng.rand(1..2)
    )
    clothe.photo.attach(io: URI.open(CLOUD_LEG.sample), filename: "clothe #{clothe.id}.jpeg", content_type: 'image/jpeg')
    clothe.save!
    puts "Created clothe #{clothe.id}"
end
for i in 101..175
  clothe = Clothe.new(
      id: i
      category: "Chest",
      bookmark: [true, false].sample,
      brand: Faker::Artist.name,
      size: prng.rand(34..42),
      colour: Faker::Color.color_name,
      material: Faker::Commerce.material,
      product_ref: prng.rand(1..1000000),
      user_id: prng.rand(1..2)
    )
    clothe.photo.attach(io: URI.open(CLOUD_CHEST.sample), filename: "clothe #{clothe.id}.jpeg", content_type: 'image/jpeg')
    clothe.save!
    puts "Created clothe #{clothe.id}"
end
# for i in 151..200
#   clothe = Clothe.new(
#       id: i
#       category: "Head",
#       bookmark: [true, false].sample,
#       brand: Faker::Artist.name,
#       size: prng.rand(34..42),
#       colour: Faker::Color.color_name,
#       material: Faker::Commerce.material,
#       product_ref: prng.rand(1..1000000),
#       user_id: prng.rand(1..2)
#     )
#     puts "Created clothe #{clothe.id}"
# end
