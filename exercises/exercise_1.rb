require_relative '../setup'
require 'active_record'

# puts "Exercise 1"
# puts "----------"

class Store < ActiveRecord::Base
end

store1 = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store2 = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store3 = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output the number of stores in the database
puts "Number of stores: #{Store.count}"
