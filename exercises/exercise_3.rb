require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
require 'active_record'

# Define the Store class
class Store < ActiveRecord::Base
end

# Load the third store with id = 3
@store3 = Store.find(3)

# Delete the third store from the database
@store3.destroy

# Output the number of stores in the database after deletion
puts "Number of stores after deletion: #{Store.count}"