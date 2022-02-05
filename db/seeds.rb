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
ClothesTag.destroy_all
ClothesOutfit.destroy_all
Outfit.destroy_all
Tag.destroy_all
Clothe.destroy_all
User.destroy_all

# ADD 2 seller
puts "Start creating DB"

puts "--------------------------------------------------------------------------"
puts "create Travis"
adriana = User.create(
  email: "travis@dressup.com",
  password: "123456",
  user_name: "Travis",
  height: 180,
  body_shape: "hourglass",
  skin_tone: "white",
  waist_circ: 60,
  chest_circ: 90,
  hip_circ: 90,
  id: 1
)
puts "Finished!"

puts "create Scott"
naomi = User.create(
  email: "scott@dressup.com",
  password: "123456",
  user_name: "Scott",
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
diesel_tshirt = Clothe.new(
  name: "Diesel Blue T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Diesel",
  size: "L",
  colour: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
diesel_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/t-shirt_blue_diesel_u7zsyk.png"), filename: "clothe #{diesel_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tshirt.save!

diesel_tiger_tshirt = Clothe.new(
  name: "Diesel Tiger T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Diesel",
  size: "L",
  colour: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
diesel_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/tshirt_tiger_diesel_opqqqe.png"), filename: "clothe #{diesel_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tiger_tshirt.save!

dior_sacai_black_tshirt = Clothe.new(
  name: "Dior x Sacai Black T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Dior",
  size: "L",
  colour: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
dior_sacai_black_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/tshirt_black_dior_s0gqwa.png"), filename: "clothe #{dior_sacai_black_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_black_tshirt.save!

dior_sacai_white_tshirt = Clothe.new(
  name: "Dior x Sacai White T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Dior",
  size: "L",
  colour: "red",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
dior_sacai_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/tshirt_white_dior_pztmoi.png"), filename: "clothe #{dior_sacai_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_white_tshirt.save!

kith_red_tshirt = Clothe.new(
  name: "Kith Red T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  colour: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_red_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_red_zdq1gm.png"), filename: "clothe #{kith_red_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_red_tshirt.save!

kith_cream_tshirt = Clothe.new(
  name: "Kith White T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  colour: "cream",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_cream_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_white_os5i5e.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_cream_tshirt.save!

rhude_tiger_tshirt = Clothe.new(
  name: "Rhude Tiger T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Rhude",
  size: "L",
  colour: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
rhude_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_tiger_m6hhhr.png"), filename: "clothe #{rhude_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_tiger_tshirt.save!

rhude_white_tshirt = Clothe.new(
  name: "Rhude White T-shirt",
  category: "Cheast",
  bookmark: [true, false].sample,
  brand: "Rhude",
  size: "L",
  colour: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
rhude_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_white_red_fmg1nf.png"), filename: "clothe #{rhude_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_white_tshirt.save!

kith_hat_blue = Clothe.new(
  name: "Kith Blue Hat",
  category: "Hat",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "Unique",
  colour: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_hat_blue.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_blue_zkcqac.png"), filename: "clothe #{kith_hat_blue.id}.jpeg", content_type: 'image/jpeg')
kith_hat_blue.save!

kith_hat_grey = Clothe.new(
  name: "Kith Grey Hat",
  category: "Hat",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "Unique",
  colour: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_hat_grey.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_grey_nuirnr.png"), filename: "clothe #{kith_hat_grey.id}.jpeg", content_type: 'image/jpeg')
kith_hat_grey.save!

mitchell_navy_hat = Clothe.new(
  name: "Mitchell & Ness Snapback",
  category: "Hat",
  bookmark: [true, false].sample,
  brand: "Mitchell & Ness",
  size: "Unique",
  colour: "navy",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
mitchell_navy_hat.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_USA_bo1nu1.png"), filename: "clothe #{mitchell_navy_hat.id}.jpeg", content_type: 'image/jpeg')
mitchell_navy_hat.save!

celine_pant_jean = Clothe.new(
  name: "Celine Black Jean",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Celine",
  size: "L",
  colour: "black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
celine_pant_jean.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058348/Clothes/pants/pant_jean_black_celine_jogonm.png"), filename: "clothe #{celine_pant_jean.id}.jpeg", content_type: 'image/jpeg')
celine_pant_jean.save!

kith_jean_black = Clothe.new(
  name: "Kith Black Jean",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  colour: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/pants/pant_jeanblack_izln6i.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black.save!

kith_jean_black_hole = Clothe.new(
  name: "Kith Jean Black w/ hole",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  colour: "black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black_hole.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/pants/pant_jean_black_wlut88.png"), filename: "clothe #{kith_jean_black_hole.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_hole.save!

kith_jean_black_red = Clothe.new(
  name: "Kith Jean Black & Red",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  colour: "Black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black_red.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_jean_black_red_y0sk54.png"), filename: "clothe #{kith_jean_black_red.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_red.save!

adidas_jogging_whith = Clothe.new(
  name: "Kith White Jogging",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  colour: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
adidas_jogging_whith.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_jogging_white_zbr0ca.png"), filename: "clothe #{adidas_jogging_whith.id}.jpeg", content_type: 'image/jpeg')
adidas_jogging_whith.save!

kith_pant_ski = Clothe.new(
  name: "Kith Ski pant",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  colour: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_pant_ski.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_ski_n9o5ds.png"), filename: "clothe #{kith_pant_ski.id}.jpeg", content_type: 'image/jpeg')
kith_pant_ski.save!

adidas_jogging_black = Clothe.new(
  name: "Adidas Black Jogging",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Adidas",
  size: "L",
  colour: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
adidas_jogging_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_joggin_black_uewr4k.png"), filename: "clothe #{adidas_jogging_black.id}.jpeg", content_type: 'image/jpeg')
adidas_jogging_black.save!

puts Clothe.all

puts "Finished!"

puts "--------------------------------------------------------------------------"

puts "Creating tag clothes ..."

Tag.create(
  id: 1,
  name: "Pants",
  user_id: 1
)

Tag.create(
  id: 2,
  name: "T-shirts",
  user_id: 1
)

Tag.create(
  id: 3,
  name: "Sneakers",
  user_id: 1
)

Tag.create(
  id: 4,
  name: "HAt",
  user_id: 1
)

Tag.create(
  id: 5,
  name: "Evenings dress",
  user_id: 1
)

Tag.create(
  id: 6,
  name: "Suits",
  user_id: 1
)

Tag.create(
  id: 7,
  name: "5 stars",
  user_id: 1
)

ClothesTag.create(
  id: 1,
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  id: 2,
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  id: 3,
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  id: 4,
  clothe_id: rand(1..20),
  tag_id: 7
)

puts "Finished!"
puts "--------------------------------------------------------------------------"

puts "DB COMPLETE"
