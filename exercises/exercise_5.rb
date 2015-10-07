require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

company_revenue = Store.sum(:annual_revenue)
puts "The total company revenue per year is #{company_revenue}."
company_average_revenue = Store.average(:annual_revenue)
puts "The average company revenue per year is #{company_average_revenue}."
total_stores_over_1million = Store.where("annual_revenue > ?", 1000000).count
puts "There are #{total_stores_over_1million} stores generating over $1M is sales per year."