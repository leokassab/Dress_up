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

puts "create Elliott"
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
  description: "KITH a été fondé par Ronnie Fieg en 2011. A la fois une marque, un label, un concept store, KITH est une extension de son créateur qui cherche à bouleverser le monde de la mode et en donnant au consommateur plus que ce pour quoi il paie. Focus sur le succès de Ronnie Fieg et son incroyable ascension."
)
kith.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665789/Clothes/Shop/kith_logo_srnap9.jpg"), filename: "shop_kith_1.jpeg", content_type: 'image/jpeg')
kith.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/kith_collection_vmg1ye.jpg"), filename: "shop_kith_2.jpeg", content_type: 'image/jpeg')
kith.save!

jordan = Shop.new(
  brand_name: "Jordan",
  url_website: "nike.com/fr/jordan",
  description: "blablabla"
)
jordan.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665879/Clothes/Shop/jordan_logo_hr97h7.jpg"), filename: "shop_jordan_1.jpeg", content_type: 'image/jpeg')
jordan.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/jordan_collection_gdytyx.jpg"), filename: "shop_jordan_2.jpeg", content_type: 'image/jpeg')
jordan.save!

nike = Shop.new(
  brand_name: "Nike",
  url_website: "nike.com/fr",
  description: "blablabla"
)
nike.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665790/Clothes/Shop/nike_logo_ccnpma.jpg"), filename: "shop_nike_1.jpeg", content_type: 'image/jpeg')
nike.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/nike_colleciton_wjbg5j.webp"), filename: "shop_nike_2.jpeg", content_type: 'image/jpeg')
nike.save!

diesel = Shop.new(
  brand_name: "Diesel",
  url_website: "https://fr.diesel.com/fr/?utm_source=google&utm_medium=cpc&utm_campaign=conversion-ADW/FR/FR/DIESEL/SRC/BRN/BRAND/U/NONE/EM/DESKTOP--BRAND/U/GENERAL/GENERAL_cross_brand&utm_content=diesel--e&gclsrc=ds",
  description: "blablabla"
)
diesel.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665992/Clothes/Shop/diesel_logo_m7quin.png"), filename: "shop_diesel_1.jpeg", content_type: 'image/jpeg')
diesel.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/diesel_collection_bmpbtz.png"), filename: "shop_diesel_2.jpeg", content_type: 'image/jpeg')
diesel.save!

dior = Shop.new(
  brand_name: "Dior",
  url_website: "https://www.dior.com/fr_fr/fashion",
  description: "blablabla"
)
dior.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665789/Clothes/Shop/dior_logo_ap4qfi.jpg"), filename: "shop_dior_1.jpeg", content_type: 'image/jpeg')
dior.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/dior_collection_bt5ba3.jpg"), filename: "shop_dior_2.jpeg", content_type: 'image/jpeg')
dior.save!

gucci = Shop.new(
  brand_name: "Gucci",
  url_website: "https://www.gucci.com/fr/fr/?gclsrc=aw.ds&gclsrc=ds",
  description: "blablabla"
)
gucci.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665823/Clothes/Shop/gucci_logo_wclpbx.jpg"), filename: "shop_gucci_1.jpeg", content_type: 'image/jpeg')
gucci.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644952498/Clothes/Shop/gucci_collection_olcdy4.jpg"), filename: "shop_gucci_2.jpeg", content_type: 'image/jpeg')
gucci.save!

louisvuitton = Shop.new(
  brand_name: "Louis Vuitton",
  url_website: "https://fr.louisvuitton.com/fra-fr/homepage?campaign=sem_LV_FLG_FRA_ALWON_MIXT_OTHER_OnGoing_EC_BREX_GTAD_MUL_FRA_EUR_EXTM_&utm_source=google&utm_medium=cpc&utm_campaign=LV_FLG_FRA_ALWON_MIXT_OTHER_OnGoing_EC_BREX_GTAD_MUL_FRA_EUR_EXTM_&utm_term=louis%20vuitton",
  description: "blablabla"
)
louisvuitton.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644665858/Clothes/Shop/louisV_logo_emcjbj.jpg"), filename: "shop_louisvuitton_1.jpeg", content_type: 'image/jpeg')
louisvuitton.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/lv_collection_wyqjzl.jpg"), filename: "shop_louisvuitton_2.jpeg", content_type: 'image/jpeg')
louisvuitton.save!

zara = Shop.new(
  brand_name: "Zara",
  url_website: "https://www.zara.com/fr/",
  description: "blablabla"
)
zara.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644678204/Clothes/Shop/Zara_logo_zyqkg2.png"), filename: "shop_zara_1.jpeg", content_type: 'image/jpeg')
zara.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644950361/Clothes/Shop/zara_collection_xobfte_ejwiwi.jpg"), filename: "shop_zara_2.jpeg", content_type: 'image/jpeg')
zara.save!

rhude = Shop.new(
  brand_name: "Rhude",
  url_website: "https://www.rhude.com/fr/",
  description: "blablabla"
)
rhude.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683301/Clothes/Shop/rhude_logo_bypmem.webp"), filename: "shop_rhude_1.jpeg", content_type: 'image/jpeg')
rhude.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/rhude_collection_yxgz0w.jpg"), filename: "shop_rhude_2.jpeg", content_type: 'image/jpeg')
rhude.save!

adidas = Shop.new(
  brand_name: "Adidas",
  url_website: "https://www.adidas.fr/hommes?cm_mmc=AdieSEM_Google-_-adidas-Brand-B-Exact-HVU-_-Brand-adidas-Men-RLSA-_-adidas&cm_mmca1=FR&cm_mmca2=e&ds_kid=43700052113502612&af_reengagement_window=30d&is_retargeting=true&pid=googleadwords_temp&c=adidas-Brand-B-Exact-HVU&af_channel=Search&gclsrc=ds&gclsrc=ds",
  description: "blablabla"
)
adidas.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683300/Clothes/Shop/adidas_logo_bz8j2w.png"), filename: "shop_adidas_1.jpeg", content_type: 'image/jpeg')
adidas.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951205/Clothes/Shop/adidas-collection_ejqchl.jpg"), filename: "shop_adidas_2.jpeg", content_type: 'image/jpeg')
adidas.save!

celine = Shop.new(
  brand_name: "Celine",
  url_website: "celine.com/fr-fr/home?gclid=Cj0KCQiA0p2QBhDvARIsAACSOOO7IFOqkN2KN4G9oLnXmlIvTx9iCBFGVRAIF91eb4waehJQzFQKZKoaAlefEALw_wcB",
  description: "blablabla"
)
celine.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644683301/Clothes/Shop/Celine_logo_wazjkg.jpg"), filename: "shop_celine_1.jpeg", content_type: 'image/jpeg')
celine.photos.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644951204/Clothes/Shop/celine__colleciton_n4equl.jpg"), filename: "shop_celine_2.jpeg", content_type: 'image/jpeg')
celine.save!
puts "Finished!"

puts "--------------------------------------------------------------------------"

puts "Creating clothes ..."
diesel_tshirt = Clothe.new(
  name: "Diesel Blue T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Diesel",
  size: "L",
  color: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1

)
diesel_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/t-shirt_blue_diesel_u7zsyk.png"), filename: "clothe #{diesel_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tshirt.save!

diesel_tiger_tshirt = Clothe.new(
  name: "Diesel Tiger T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Diesel",
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
diesel_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644058350/Clothes/Tshirt/tshirt_tiger_diesel_opqqqe.png"), filename: "clothe #{diesel_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
diesel_tiger_tshirt.save!

dior_sacai_black_tshirt = Clothe.new(
  name: "Dior x Sacai Black T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Dior",
  size: "L",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
dior_sacai_black_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644074356/Clothes/Tshirt/STSLA-M2845TE-BLK-3860_2048x-removebg-preview_xnhb21.png"), filename: "clothe #{dior_sacai_black_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_black_tshirt.save!

dior_sacai_white_tshirt = Clothe.new(
  name: "Dior x Sacai White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Dior",
  size: "L",
  color: "red",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
dior_sacai_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644074355/Clothes/Tshirt/STSLA-M2845TE-WHT-3858_2048x-removebg-preview_rkne7o.png"), filename: "clothe #{dior_sacai_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
dior_sacai_white_tshirt.save!

kith_red_tshirt = Clothe.new(
  name: "Kith Red T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_red_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_red_zdq1gm.png"), filename: "clothe #{kith_red_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_red_tshirt.save!

kith_cream_tshirt = Clothe.new(
  name: "Kith White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  color: "cream",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_cream_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919410/Clothes/Tshirt/t-shirt_white_os5i5e.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_cream_tshirt.save!

rhude_tiger_tshirt = Clothe.new(
  name: "Rhude Tiger T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Rhude",
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
rhude_tiger_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_tiger_m6hhhr.png"), filename: "clothe #{rhude_tiger_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_tiger_tshirt.save!

rhude_white_tshirt = Clothe.new(
  name: "Rhude White T-shirt",
  category: "Chest",
  bookmark: [true, false].sample,
  brand: "Rhude",
  size: "L",
  color: "white",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
rhude_white_tshirt.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919411/Clothes/Tshirt/t-shirt_white_red_fmg1nf.png"), filename: "clothe #{rhude_white_tshirt.id}.jpeg", content_type: 'image/jpeg')
rhude_white_tshirt.save!

kith_hat_blue = Clothe.new(
  name: "Kith Blue Hat",
  category: "Head",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "Unique",
  color: "blue",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_hat_blue.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_blue_zkcqac.png"), filename: "clothe #{kith_hat_blue.id}.jpeg", content_type: 'image/jpeg')
kith_hat_blue.save!

kith_hat_grey = Clothe.new(
  name: "Kith Grey Hat",
  category: "Head",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "Unique",
  color: "grey",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_hat_grey.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919381/Clothes/hat/hat_grey_nuirnr.png"), filename: "clothe #{kith_hat_grey.id}.jpeg", content_type: 'image/jpeg')
kith_hat_grey.save!

mitchell_navy_hat = Clothe.new(
  name: "Mitchell & Ness Snapback",
  category: "Head",
  bookmark: [true, false].sample,
  brand: "Mitchell & Ness",
  size: "Unique",
  color: "navy",
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
  color: "black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
celine_pant_jean.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075460/Clothes/pants/MC2A00005M1395-PUR_2048x-removebg-preview_vcefm6.png"), filename: "clothe #{celine_pant_jean.id}.jpeg", content_type: 'image/jpeg')
celine_pant_jean.save!

kith_jean_black = Clothe.new(
  name: "Kith Black Jean",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075391/Clothes/pants/MA3554-OLV-4267_2048x-removebg-preview_grtinb.png"), filename: "clothe #{kith_cream_tshirt.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black.save!

kith_jean_black_hole = Clothe.new(
  name: "Kith Jean Black w/ hole",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  color: "black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black_hole.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075411/Clothes/pants/VKAW210085-BLK-4285_2048x-removebg-preview_qzi2r3.png"), filename: "clothe #{kith_jean_black_hole.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_hole.save!

kith_jean_black_red = Clothe.new(
  name: "Kith Jean Black & Red",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "34",
  color: "black",
  material: "jean",
  product_ref: rand(1..1000000),
  user_id: 1
)
kith_jean_black_red.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644075366/Clothes/pants/MAHA7026-OLV-4262_2048x-removebg-preview_rulxz1.png"), filename: "clothe #{kith_jean_black_red.id}.jpeg", content_type: 'image/jpeg')
kith_jean_black_red.save!

adidas_jogging_whith = Clothe.new(
  name: "Kith White Jogging",
  category: "Leg",
  bookmark: [true, false].sample,
  brand: "Kith",
  size: "L",
  color: "white",
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
  color: "grey",
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
  color: "black",
  material: "coton",
  product_ref: rand(1..1000000),
  user_id: 1
)
adidas_jogging_black.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1643919409/Clothes/pants/pant_joggin_black_uewr4k.png"), filename: "clothe #{adidas_jogging_black.id}.jpeg", content_type: 'image/jpeg')
adidas_jogging_black.save!

jordan_1 = Clothe.new(
  name: "Jordan 4 white",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "white",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_1.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076414/Clothes/foot/2_owmblm.png"), filename: "clothe #{jordan_1.id}.jpeg", content_type: 'image/jpeg')
jordan_1.save!

jordan_2 = Clothe.new(
  name: "Jordan 4 University Blue",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "blue",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_2.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076393/Clothes/foot/6_wonm3x.png"), filename: "clothe #{jordan_2.id}.jpeg", content_type: 'image/jpeg')
jordan_2.save!

jordan_3 = Clothe.new(
  name: "Jordan 11 Navy",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "navy",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_3.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076482/Clothes/foot/4_gwmboy.png"), filename: "clothe #{jordan_3.id}.jpeg", content_type: 'image/jpeg')
jordan_3.save!

jordan_4 = Clothe.new(
  name: "Jordan 4 Bred",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "black",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_4.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076444/Clothes/foot/3_cz7azq.png"), filename: "clothe #{jordan_4.id}.jpeg", content_type: 'image/jpeg')
jordan_4.save!

jordan_5 = Clothe.new(
  name: "Jordan 4 Grey",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "grey",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_5.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076534/Clothes/foot/1_l9tdg5.png"), filename: "clothe #{jordan_5.id}.jpeg", content_type: 'image/jpeg')
jordan_5.save!

jordan_6 = Clothe.new(
  name: "Jordan 11 White/Red",
  category: "Foot",
  bookmark: [true, false].sample,
  brand: "Jordan",
  size: "44",
  color: "white",
  material: "nubuck",
  product_ref: rand(1..1000000),
  user_id: 1
)
jordan_6.photo.attach(io: URI.open("https://res.cloudinary.com/detkinqcf/image/upload/v1644076514/Clothes/foot/5_updmxr.png"), filename: "clothe #{jordan_6.id}.jpeg", content_type: 'image/jpeg')
jordan_6.save!

puts Clothe.all

puts "Finished!"

puts "--------------------------------------------------------------------------"

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
