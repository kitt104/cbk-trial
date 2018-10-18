# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Product.destroy_all
Category.destroy_all

puts 'Creating categories...'
freestyle = Category.create!(name: 'freestyle')
freeride = Category.create!(name: 'freeride')

puts 'Creating Products...'
Product.create!(sku: 'cabrinha-switchblade-2018-kite', name: 'Cabrinha Switchblade 2018 Kite', category: freeride, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Kite-Bears-HD-Images.jpg')

Product.create!(sku: 'fone-bandit-11-2018-kite', name: 'F-One Bandit 11 2018 Kite', category: freestyle, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Product.create!(sku: 'slingshot-wave-sst-2018-kite',   name: 'Slingshot Wave SST 2017 Kite',      category: freestyle, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
