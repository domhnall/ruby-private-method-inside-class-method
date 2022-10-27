require "#{__dir__}/has_content"

class Box
  extend HasContent
  has_content(:stuff)

  puts "Box definition: #{self}"
end
