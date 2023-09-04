require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
require 'active_record'

# Define the Store class
class Store < ActiveRecord::Base
end

# Load the first store with id = 1
@store1 = Store.find(1)

# Load the second store
@store2 = Store.find(2)

# Update the first store's name
@store1.update(name: 'Matts store')

# You can also update other attributes if needed
# For example, to change the annual_revenue:
# store1.update(annual_revenue: new_annual_revenue)

# Check if the update was successful
if @store1.valid?
  puts "Store 1 updated successfully."
else
  puts "Error updating Store 1."
end


