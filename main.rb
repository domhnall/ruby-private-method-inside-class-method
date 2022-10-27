require "#{__dir__}/box"
box = Box.new

box.set_stuff("Jack")
puts box.get_stuff # Prints "Jack"
puts "!!WARNING!! Box#log should be private" if Box.instance_methods.include?(:log)
