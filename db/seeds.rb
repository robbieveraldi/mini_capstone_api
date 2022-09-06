# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Product.create!(
#   name: "Paper Towels",
#   price: 3,
#   image_url: "https://target.scene7.com/is/image/Target/GUEST_9512d468-bf4c-4970-86ca-db3f78cf2136",
#   description: "Towels made of paper. Good for cleaning and drying surfaces.",
# )
# Product.create!(
#   name: "Clorox Bleach",
#   price: 7,
#   image_url: "https://target.scene7.com/is/image/Target/GUEST_7016ee9f-317c-40f9-9797-9ebf46aeb4bd?wid=488&hei=488&fmt=pjpeg",
#   description: "Chemical bleach solution to disinfect and sanitize surfaces. Can also be used to remove stains from white clothing.",
# )
# Product.create(
#   name: "Dyson Cyclone V10 Animal Vacuum",
#   price: 550,
#   image_url: "https://dyson-h.assetsadobe2.com/is/image/content/dam/dyson/images/products/primary/394429-01.png?$responsive$&cropPathE=mobile&fit=stretch,1&wid=640",
#   description: "Cordless vacuum with up to 60 minutes of usage on a single charge. Designed for household with pets. Lifetime warranty. Visit dyson.com for more info.",
# )
# Product.create(
#   name: "Dawn Ultra Dish Soap",
#   price: 5,
#   image_url: "https://images.ctfassets.net/srbn3gqsx5ls/2WBeRcN8buo9nUt2RMW5FK/8ce1c0efde0551f773f055a6d2e73c99/pgone_dawn-dish_en-us_prod_images_okn47frwsxibbilostkq",
#   description: "Dish soap made to be effective and fight the toughest grease and stains. 50% less scrubbing than traditional dish soap. Free of harmful chemicals and able to be used on animals that have come into contact with grease, tar, or oil.",
# )
# Product.create(
#   name: "4-in-1 Tide Pods Ultra OXI",
#   price: 28,
#   image_url: "https://i5.walmartimages.com/asr/c60af8f0-231e-4539-a5fc-5051c4b7316a.65332f0aaaca85e3818b7c3cb95cd05b.jpeg",
#   description: "New Tide PODS Ultra OXI laundry detergent pacs. With built-in pre-treaters, Tide PODS Ultra OXI removes even the toughest stains. It's the 4-in-1 laundry solution with detergent, stain remover, color protector and built-in pre-treaters, for next-level stain fighting. The special film enables the multi-chamber technology to dissolve in both hot & cold water while the quick collapsing Smart Suds targets tough stains and work in both HE and standard washing machines.",
# )

Supplier.create!(
  name: "Costco",
  email: "costco@costco.com",
  phone_number: "1-800-Costco",
)

Supplier.create!(
  name: "Whole Foods",
  email: "foods@wf.com",
  phone_number: "1-800-whole",
)

Supplier.create!(
  name: "Walmart",
  email: "walmart@walmart.com",
  phone_number: "1-800-walmart",
)
