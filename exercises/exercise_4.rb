require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
require 'active_record'

# Define the Store class
class Store < ActiveRecord::Base
end

# Create 3 more stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output men's stores information
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: $#{store.annual_revenue}"
end

# Fetch stores that carry women's apparel with annual revenue less than $1 million
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..999999)

# Output women's stores information
puts "\nWomen's Apparel Stores with Annual Revenue < $1M:"
@womens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: $#{store.annual_revenue}"
end
