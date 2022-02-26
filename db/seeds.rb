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
puts "create Elliott"
travis = User.create(
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

puts "create Travis"
elliott = User.create(
  email: "elliott@dressup.com",
  password: "123456",
  user_name: "Elliott",
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
puts "Creating shops ..."

kith = Shop.new(
  brand_name: "Kith",
  url_website: "https://eu.kith.com/",
  description: "Spring 2022"
)
kith.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665789/Clothes/Shop/kith_logo_srnap9.jpg"), filename: "shop_kith_1.jpeg", content_type: 'image/jpeg')
kith.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/kith_collection_vmg1ye.jpg"), filename: "shop_kith_2.jpeg", content_type: 'image/jpeg')
kith.save!

jordan = Shop.new(
  brand_name: "Jordan",
  url_website: "nike.com/fr/jordan",
  description: "Spring 2022"
)
jordan.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665879/Clothes/Shop/jordan_logo_hr97h7.jpg"), filename: "shop_jordan_1.jpeg", content_type: 'image/jpeg')
jordan.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/jordan_collection_gdytyx.jpg"), filename: "shop_jordan_2.jpeg", content_type: 'image/jpeg')
jordan.save!

nike = Shop.new(
  brand_name: "Nike",
  url_website: "nike.com/fr",
  description: "Summer 2022"
)
nike.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665790/Clothes/Shop/nike_logo_ccnpma.jpg"), filename: "shop_nike_1.jpeg", content_type: 'image/jpeg')
nike.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/nike_colleciton_wjbg5j.webp"), filename: "shop_nike_2.jpeg", content_type: 'image/jpeg')
nike.save!

diesel = Shop.new(
  brand_name: "Diesel",
  url_website: "https://fr.diesel.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=conversion-ADW/FR/FR/DIESEL/SRC/BRN/BRAND/U/NONE/EM/DESKTOP--BRAND/U/GENERAL/GENERAL_cross_brand&utm_content=diesel--e&gclsrc=ds",
  description: "Winter 2022"
)
diesel.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665992/Clothes/Shop/diesel_logo_m7quin.png"), filename: "shop_diesel_1.jpeg", content_type: 'image/jpeg')
diesel.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/diesel_collection_bmpbtz.png"), filename: "shop_diesel_2.jpeg", content_type: 'image/jpeg')
diesel.save!

dior = Shop.new(
  brand_name: "Dior",
  url_website: "https://www.dior.com/fr_fr/fashion",
  description: "Spring 2022"
)
dior.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665789/Clothes/Shop/dior_logo_ap4qfi.jpg"), filename: "shop_dior_1.jpeg", content_type: 'image/jpeg')
dior.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/dior_collection_bt5ba3.jpg"), filename: "shop_dior_2.jpeg", content_type: 'image/jpeg')
dior.save!

gucci = Shop.new(
  brand_name: "Gucci",
  url_website: "https://www.gucci.com/fr/fr/?gclsrc=aw.ds&gclsrc=ds",
  description: "The only one"
)
gucci.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665823/Clothes/Shop/gucci_logo_wclpbx.jpg"), filename: "shop_gucci_1.jpeg", content_type: 'image/jpeg')
gucci.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644952498/Clothes/Shop/gucci_collection_olcdy4.jpg"), filename: "shop_gucci_2.jpeg", content_type: 'image/jpeg')
gucci.save!

louisvuitton = Shop.new(
  brand_name: "Louis Vuitton",
  url_website: "https://fr.louisvuitton.com/fra-fr/homepage?campaign=sem_LV_FLG_FRA_ALWON_MIXT_OTHER_OnGoing_EC_BREX_GTAD_MUL_FRA_EUR_EXTM_&utm_source=google&utm_medium=cpc&utm_campaign=LV_FLG_FRA_ALWON_MIXT_OTHER_OnGoing_EC_BREX_GTAD_MUL_FRA_EUR_EXTM_&utm_term=louis%20vuitton",
  description: "Spring 2022"
)
louisvuitton.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665858/Clothes/Shop/louisV_logo_emcjbj.jpg"), filename: "shop_louisvuitton_1.jpeg", content_type: 'image/jpeg')
louisvuitton.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/lv_collection_wyqjzl.jpg"), filename: "shop_louisvuitton_2.jpeg", content_type: 'image/jpeg')
louisvuitton.save!

zara = Shop.new(
  brand_name: "Zara",
  url_website: "https://www.zara.com/fr/",
  description: "Spring 2022"
)
zara.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644678204/Clothes/Shop/Zara_logo_zyqkg2.png"), filename: "shop_zara_1.jpeg", content_type: 'image/jpeg')
zara.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644950361/Clothes/Shop/zara_collection_xobfte_ejwiwi.jpg"), filename: "shop_zara_2.jpeg", content_type: 'image/jpeg')
zara.save!

rhude = Shop.new(
  brand_name: "Rhude",
  url_website: "https://www.rhude.com/fr/",
  description: "Spring 2022"
)
rhude.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683301/Clothes/Shop/rhude_logo_bypmem.webp"), filename: "shop_rhude_1.jpeg", content_type: 'image/jpeg')
rhude.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/rhude_collection_yxgz0w.jpg"), filename: "shop_rhude_2.jpeg", content_type: 'image/jpeg')
rhude.save!

adidas = Shop.new(
  brand_name: "Adidas",
  url_website: "https://www.adidas.fr/hommes?cm_mmc=AdieSEM_Google-_-adidas-Brand-B-Exact-HVU-_-Brand-adidas-Men-RLSA-_-adidas&cm_mmca1=FR&cm_mmca2=e&ds_kid=43700052113502612&af_reengagement_window=30d&is_retargeting=true&pid=googleadwords_temp&c=adidas-Brand-B-Exact-HVU&af_channel=Search&gclsrc=ds&gclsrc=ds",
  description: "Spring 2022"
)
adidas.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683300/Clothes/Shop/adidas_logo_bz8j2w.png"), filename: "shop_adidas_1.jpeg", content_type: 'image/jpeg')
adidas.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951205/Clothes/Shop/adidas-collection_ejqchl.jpg"), filename: "shop_adidas_2.jpeg", content_type: 'image/jpeg')
adidas.save!

celine = Shop.new(
  brand_name: "Celine",
  url_website: "celine.com/fr-fr/home?gclid=Cj0KCQiA0p2QBhDvARIsAACSOOO7IFOqkN2KN4G9oLnXmlIvTx9iCBFGVRAIF91eb4waehJQzFQKZKoaAlefEALw_wcB",
  description: "Spring 2022"
)
celine.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683301/Clothes/Shop/Celine_logo_wazjkg.jpg"), filename: "shop_celine_1.jpeg", content_type: 'image/jpeg')
celine.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/celine__colleciton_n4equl.jpg"), filename: "shop_celine_2.jpeg", content_type: 'image/jpeg')
celine.save!
puts "Finished!"

Shop.all.each do |shop|
  puts "#{shop.id}- #{shop.brand_name}"
end
puts "--------------------------------------------------------------------------"

puts "Creating clothes ..."
wagon_tshirt = Clothe.new(
  name: "Wagon batch 703 t-shirt",
  category: "Chest",
  bookmark: true,
  size: "L",
  color: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
)
wagon_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645873276/Clothes/1_yi9jyf.png"), filename: "clothe #{diesel_tshirt.id}.jpeg", content_type: 'image/jpeg')
wagon_tshirt.save!

diesel_tshirt = Clothe.new(
  name: "Diesel Blue T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 4
)
diesel_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/t-shirt_blue_diesel_u7zsyk.png"), filename: "clothe #{diesel_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tshirt.save!

diesel_tiger_tshirt = Clothe.new(
  name: "Diesel Tiger T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 4
)
diesel_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/tshirt_tiger_diesel_opqqqe.png"), filename: "clothe #{diesel_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tiger_tshirt.save!

dior_sacai_black_tshirt = Clothe.new(
  name: "Dior x Sacai Black T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 5
)
dior_sacai_black_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644074356/Clothes/Tshirt/STSLA-M2845TE-BLK-3860_2048x-removebg-preview_xnhb21.png"), filename: "clothe #{dior_sacai_black_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_black_tshirt.save!

dior_sacai_white_tshirt = Clothe.new(
  name: "Dior x Sacai White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 5
)
dior_sacai_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644074355/Clothes/Tshirt/STSLA-M2845TE-WHT-3858_2048x-removebg-preview_rkne7o.png"), filename: "clothe #{dior_sacai_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_white_tshirt.save!

kith_red_tshirt = Clothe.new(
  name: "Kith Red T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "red",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_red_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_red_zdq1gm.png"), filename: "clothe #{kith_red_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_red_tshirt.save!

kith_cream_tshirt = Clothe.new(
  name: "Kith White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "cream",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_cream_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_white_os5i5e.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_cream_tshirt.save!

rhude_tiger_tshirt = Clothe.new(
  name: "Rhude Tiger T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 9
)
rhude_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_tiger_m6hhhr.png"), filename: "clothe #{rhude_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_tiger_tshirt.save!

rhude_white_tshirt = Clothe.new(
  name: "Rhude White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 9
)
rhude_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_white_red_fmg1nf.png"), filename: "clothe #{rhude_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_white_tshirt.save!

kith_hat_blue = Clothe.new(
  name: "Kith Blue Hat",
  category: "Head",
  bookmark: [true, false].sample,
  size: "Unique",
  color: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_hat_blue.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_blue_zkcqac.png"), filename: "clothe #{kith_hat_blue.id}.jpeg", content_type: 'image/jpeg')
kith_hat_blue.save!

kith_hat_grey = Clothe.new(
  name: "Kith Grey Hat",
  category: "Head",
  bookmark: [true, false].sample,
  size: "Unique",
  color: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_hat_grey.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_grey_nuirnr.png"), filename: "clothe #{kith_hat_grey.id}.jpeg", content_type: 'image/jpeg')
kith_hat_grey.save!

kith_hat = Clothe.new(
  name: "Mitchell & Ness Snapback",
  category: "Head",
  bookmark: [true, false].sample,
  size: "Unique",
  color: "navy",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_hat.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_USA_bo1nu1.png"), filename: "clothe #{kith_hat.id}.jpeg", content_type: 'image/jpeg')
kith_hat.save!

celine_pant_jean = Clothe.new(
  name: "Purple Pant",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "L",
  color: "purple",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 11
)
celine_pant_jean.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075460/Clothes/pants/MC2A00005M1395-PUR_2048x-removebg-preview_vcefm6.png"), filename: "clothe #{celine_pant_jean.id}.jpeg", content_type: 'image/jpeg')
celine_pant_jean.save!

kith_jean_black = Clothe.new(
  name: "Kith Kaki cargo",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "34",
  color: "kaki",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_jean_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075391/Clothes/pants/MA3554-OLV-4267_2048x-removebg-preview_grtinb.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black.save!

kith_jean_black_hole = Clothe.new(
  name: "Kith Jean crunch",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "34",
  color: "blue",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_jean_black_hole.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075411/Clothes/pants/VKAW210085-BLK-4285_2048x-removebg-preview_qzi2r3.png"), filename: "clothe #{kith_jean_black_hole.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_hole.save!

kith_jean_black_red = Clothe.new(
  name: "Kith Brown Shino",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "34",
  color: "brown",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_jean_black_red.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075366/Clothes/pants/MAHA7026-OLV-4262_2048x-removebg-preview_rulxz1.png"), filename: "clothe #{kith_jean_black_red.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_red.save!

adidas_jogging_whith = Clothe.new(
  name: "Kith White Jogging",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 10
)
adidas_jogging_whith.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_jogging_white_zbr0ca.png"), filename: "clothe #{adidas_jogging_whith.id}.jpeg", content_type: 'image/jpeg')
adidas_jogging_whith.save!

kith_pant_ski = Clothe.new(
  name: "Kith Ski pant",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "L",
  color: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1
)
kith_pant_ski.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_ski_n9o5ds.png"), filename: "clothe #{kith_pant_ski.id}.jpeg", content_type: 'image/jpeg')
kith_pant_ski.save!

adidas_jogging_black = Clothe.new(
  name: "Adidas Black Jogging",
  category: "Leg",
  bookmark: [true, false].sample,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 10
)
adidas_jogging_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_joggin_black_uewr4k.png"), filename: "clothe #{adidas_jogging_black.id}.jpeg", content_type: 'image/jpeg')
adidas_jogging_black.save!

jordan_1 = Clothe.new(
  name: "Jordan 4 white",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "white",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_1.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076414/Clothes/foot/2_owmblm.png"), filename: "clothe #{jordan_1.id}.jpeg", content_type: 'image/jpeg')
jordan_1.save!

jordan_2 = Clothe.new(
  name: "Jordan 4 University Blue",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "blue",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_2.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076393/Clothes/foot/6_wonm3x.png"), filename: "clothe #{jordan_2.id}.jpeg", content_type: 'image/jpeg')
jordan_2.save!

jordan_3 = Clothe.new(
  name: "Jordan 11 Navy",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "navy",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_3.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076482/Clothes/foot/4_gwmboy.png"), filename: "clothe #{jordan_3.id}.jpeg", content_type: 'image/jpeg')
jordan_3.save!

jordan_4 = Clothe.new(
  name: "Jordan 4 Bred",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "black",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_4.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076444/Clothes/foot/3_cz7azq.png"), filename: "clothe #{jordan_4.id}.jpeg", content_type: 'image/jpeg')
jordan_4.save!

jordan_5 = Clothe.new(
  name: "Jordan 4 Grey",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "grey",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_5.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076534/Clothes/foot/1_l9tdg5.png"), filename: "clothe #{jordan_5.id}.jpeg", content_type: 'image/jpeg')
jordan_5.save!

jordan_6 = Clothe.new(
  name: "Jordan 11 White/Red",
  category: "Foot",
  bookmark: [true, false].sample,
  size: "44",
  color: "white",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2
)
jordan_6.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076514/Clothes/foot/5_updmxr.png"), filename: "clothe #{jordan_6.id}.jpeg", content_type: 'image/jpeg')
jordan_6.save!

puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "Creating clothes shop  ..."

aj1_travis_scott = Clothe.new(
  name: "Jordan 1 Moka Travis Scott",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "brown",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
aj1_travis_scott.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/2_vqobdr.png"), filename: "clothe #{aj1_travis_scott.id}.jpeg", content_type: 'image/jpeg')
aj1_travis_scott.save!

j6_travis_scott = Clothe.new(
  name: "Jordan 6 Travis Scott",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "brown",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
j6_travis_scott.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/3_rdhlsk.png"), filename: "clothe #{j6_travis_scott.id}.jpeg", content_type: 'image/jpeg')
j6_travis_scott.save!

j1_off_white = Clothe.new(
  name: "Jordan A Off White",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "blue",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
j1_off_white.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/4_oeaoom.png"), filename: "clothe #{j1_off_white.id}.jpeg", content_type: 'image/jpeg')
j1_off_white.save!

j4_bred = Clothe.new(
  name: "Jordan 4 Bred",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "grey",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
j4_bred.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/6_zpingd.png"), filename: "clothe #{j4_bred.id}.jpeg", content_type: 'image/jpeg')
j4_bred.save!

j1_maison_chateau_rouge = Clothe.new(
  name: "Jordan 1 Maison Chateau Rouge",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "yellow",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
j1_maison_chateau_rouge.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/5_ylgx8p.png"), filename: "clothe #{j1_maison_chateau_rouge.id}.jpeg", content_type: 'image/jpeg')
j1_maison_chateau_rouge.save!

j1_sb_ts = Clothe.new(
  name: "Jordan 1 Low SB Travis Scott",
  category: "Foot",
  bookmark: false,
  size: "44",
  color: "cream",
  material: "leather",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
j1_sb_ts.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645553557/Clothes/Shop/1_rt7zc7.png"), filename: "clothe #{j1_sb_ts.id}.jpeg", content_type: 'image/jpeg')
j1_sb_ts.save!

loewe_tshirt = Clothe.new(
  name: "T-shirt Loewe neon pink",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
loewe_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266686/Clothes/Shop/kith-tshirt-loewe_bl8p1j.png"), filename: "clothe #{loewe_tshirt.id}.jpeg", content_type: 'image/jpeg')
loewe_tshirt.save!

kith_shirt_black = Clothe.new(
  name: "Shirt Black satin",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "black",
  material: "satin",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_shirt_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-tshirt-blac_satin_a5yjpb.png"), filename: "clothe #{kith_shirt_black.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_black.save!

kith_tshirt_palm = Clothe.new(
  name: "Palm Angels Shark",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_tshirt_palm.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith_tshirt-palm_csybwm.png"), filename: "clothe #{kith_tshirt_palm.id}.jpeg", content_type: 'image/jpeg')
kith_tshirt_palm.save!

kith_shirt_awake = Clothe.new(
  name: "T-shirt Black awake",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_shirt_awake.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-thsirt-awake_ivdkdd.png"), filename: "clothe #{kith_shirt_awake.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_awake.save!

kith_tshirt_purple = Clothe.new(
  name: "T-shirt Black purple",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "purple",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_tshirt_purple.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266688/Clothes/Shop/kith-thshirt-mauve_rclizh.png"), filename: "clothe #{kith_tshirt_purple.id}.jpeg", content_type: 'image/jpeg')
kith_tshirt_purple.save!

kith_shirt_logo = Clothe.new(
  name: "Shirt White Logo",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_shirt_logo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266688/Clothes/Shop/kith-tshirt-logo_lg7fh9.png"), filename: "clothe #{kith_shirt_logo.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_logo.save!

kith_tshirt_camo = Clothe.new(
  name: "T-Shirt camo",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "camo",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_tshirt_camo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266688/Clothes/Shop/kith-tshirt-camo_c56r93.png"), filename: "clothe #{kith_tshirt_camo.id}.jpeg", content_type: 'image/jpeg')
kith_tshirt_camo.save!

kith_shirt_camo = Clothe.new(
  name: "Shirt camo",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "camo",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_shirt_camo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266689/Clothes/Shop/kith_tshirt-camoYSL_u0ligm.png"), filename: "clothe #{kith_shirt_camo.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_camo.save!

kith_shirt_flower = Clothe.new(
  name: "Shirt flower",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "kaki",
  material: "satin",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_shirt_flower.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266688/Clothes/Shop/kith-tshirt-YSL_giuubb.png"), filename: "clothe #{kith_shirt_flower.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_flower.save!

kith_shirt_white_rhude = Clothe.new(
  name: "T-shirt Rhude white Legs",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_shirt_white_rhude.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266689/Clothes/Shop/kith-tshirt-rhude_ieh4vy.png"), filename: "clothe #{kith_shirt_white_rhude.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_white_rhude.save!

kith_shirt_black_west = Clothe.new(
  name: "T-shirt Black West",
  category: "Chest",
  bookmark: false,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_shirt_black_west.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266688/Clothes/Shop/kith-tshirt-black_oyidw0.png"), filename: "clothe #{kith_shirt_black_west.id}.jpeg", content_type: 'image/jpeg')
kith_shirt_black_west.save!

kith_hat_pink = Clothe.new(
  name: "Hat pink Kith",
  category: "Head",
  bookmark: false,
  size: "L",
  color: "pink",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_hat_pink.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266686/Clothes/Shop/ktt_hat_rose_ht8coa.png"), filename: "clothe #{kith_hat_pink.id}.jpeg", content_type: 'image/jpeg')
kith_hat_pink.save!

kith_hat_bob_logo = Clothe.new(
  name: "Bob blue logo Kith",
  category: "Head",
  bookmark: false,
  size: "L",
  color: "navy",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_hat_bob_logo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kit-hat-bob_logo_q39fvi.png"), filename: "clothe #{kith_hat_bob_logo.id}.jpeg", content_type: 'image/jpeg')
kith_hat_bob_logo.save!

kith_bob_blue = Clothe.new(
  name: "Bob Bleu",
  category: "Head",
  bookmark: false,
  size: "L",
  color: "navy",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_bob_blue.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-hat-bob_j3ed7q.png"), filename: "clothe #{kith_bob_blue.id}.jpeg", content_type: 'image/jpeg')
kith_bob_blue.save!

ysl_legs_camo = Clothe.new(
  name: "YSL jogging white",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "white",
  material: "satin",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
ysl_legs_camo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645470301/Clothes/Shop/PA47122-GRY-3886_2048x-removebg-preview_1_le7d26.png"), filename: "clothe #{ysl_legs_camo.id}.jpeg", content_type: 'image/jpeg')
ysl_legs_camo.save!

kith_bleu_jean = Clothe.new(
  name: "Bleu jean",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "navy",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_bleu_jean.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-legs-jean_tqed63.png"), filename: "clothe #{kith_bleu_jean.id}.jpeg", content_type: 'image/jpeg')
kith_bleu_jean.save!

kith_legs_cargo = Clothe.new(
  name: "Pant Cargo Grey",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_legs_cargo.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-legs-cargo_grey_xtxluw.png"), filename: "clothe #{kith_legs_cargo.id}.jpeg", content_type: 'image/jpeg')
kith_legs_cargo.save!

kith_legs_cargo_kaki = Clothe.new(
  name: "Pant Cargo Kaki",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "kaki",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 1,
  bought: false
)
kith_legs_cargo_kaki.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266687/Clothes/Shop/kith-legs-cargo_zy6xwz.png"), filename: "clothe #{kith_legs_cargo_kaki.id}.jpeg", content_type: 'image/jpeg')
kith_legs_cargo_kaki.save!

kith_legs_short = Clothe.new(
  name: "Pant cargo black",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_legs_short.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645470278/Clothes/Shop/29028-Metric-Insulated-Pant-Black-F21_2048x-removebg-preview_1_kvioqy.png"), filename: "clothe #{kith_legs_short.id}.jpeg", content_type: 'image/jpeg')
kith_legs_short.save!

kith_legs_satin = Clothe.new(
  name: "Satin's pant",
  category: "Leg",
  bookmark: false,
  size: "L",
  color: "black",
  material: "satin",
  product_ref: rand(1..1000000),
  user_id: 1,
  shop_id: 2,
  bought: false
)
kith_legs_satin.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1645266686/Clothes/Shop/kith-legs-pantYSL_j5d1n7.png"), filename: "clothe #{kith_legs_satin.id}.jpeg", content_type: 'image/jpeg')
kith_legs_satin.save!
puts "Finished!"

Clothe.all.each do |clothe|
  puts "#{clothe.id}_ #{clothe.brand} - #{clothe.name}"
end

puts "-------------------------------------------------------------------------"
puts "Creating tag clothes ..."

Tag.create(
  name: "Pants",
  user_id: 1
)


Tag.create(
  name: "T-shirts",
  user_id: 1
)

Tag.create(
  name: "Sneakers",
  user_id: 1
)

Tag.create(
  name: "Hat",
  user_id: 1
)

Tag.create(
  name: "Suits",
  user_id: 1
)

Tag.create(
  name: "5 stars",
  user_id: 1
)

Tag.create(
  name: "Night",
  user_id: 1
)

Tag.create(
  name: "Office",
  user_id: 1
)

Tag.create(
  name: "Hollyday",
  user_id: 1
)

ClothesTag.create(
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  clothe_id: rand(1..20),
  tag_id: 7
)

ClothesTag.create(
  clothe_id: rand(1..20),
  tag_id: 7
)

puts "Finished!"
puts "--------------------------------------------------------------------------"

puts "DB COMPLETE"
