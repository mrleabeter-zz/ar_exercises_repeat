require_relative '../setup'
require 'pry'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

Store.create(
  name: 'Burnaby',
  annual_revenue: 3000000,
  mens_apparel: true,
  womens_apparel: true
  )

Store.create(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
  )

Store.create(
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
  )

# Example store expected to fail and throw error w/ message
# will raise an exception without test variable assignment and error call if ".create!"" instead of ".create"
test = Store.create(
  name: 'Example',
  annual_revenue: 1,
  mens_apparel: false,
  womens_apparel: false
  )
# binding.pry
test.valid?
puts test.errors.messages

puts Store.count