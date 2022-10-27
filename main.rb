require 'debug'
require "#{__dir__}/box"
box = Box.new

binding.break
box.set_stuff("Jack")
puts box.get_stuff # Prints "Jack"
puts "!!WARNING!! Box#log should be private" if Box.instance_methods.include?(:log)

#Box.class_eval do
#  def uppercase_stuff
#    @stuff.upcase
#  end
#end
#
#box.uppercase_stuff
#
#Box.instance_eval do
#  def up_stuff
#    puts self
#    puts "#{self.class}"
#  end
#end
#
#Box.up_stuff
