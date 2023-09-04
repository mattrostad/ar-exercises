require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
require 'active_record'

# Define the Store class
class Store < ActiveRecord::Base
end

# Calculate the total revenue for all stores
total_revenue = Store.sum(:annual_revenue)

# Calculate the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)

# Count the number of stores generating $1 million or more in annual sales
stores_with_high_revenue = Store.where('annual_revenue >= ?', 1000000).count

# Output the results
puts "Total Revenue for the Entire Company: $#{total_revenue}"
puts "Average Annual Revenue for All Stores: $#{average_revenue}"
puts "Number of Stores Generating $1M or More in Annual Sales: #{stores_with_high_revenue}"
