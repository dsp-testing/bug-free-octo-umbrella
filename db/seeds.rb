# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

3.times { |n| Shop.create(name: "shop #{n + 1}") }
30.times { |n| Item.create(title: "Item #{n + 1}", shop_id: rand(1..3)) }