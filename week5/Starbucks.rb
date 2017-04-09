# Write a program that holds on to coffee orders.
#
# c1 = Coffee.new('latte','2 sugars','medium','Darryl')
#
# Write the .to_s method for this class so when you puts c1 you will have "Darryl's latte, medium, 2 sugars.
require 'pry'
coffee_ready_for_collection = []
collected_coffee = []
class Coffee
  def initialize(coffee_name,sugars,size,customer_name)
    @name = coffee_name
    @sugars = sugars
    @size = size
    @customer_name = customer_name
    @collected = false
    @ready_time = Time.now + (rand(120..300))
  end

  def to_s
    "#{@customer_name}'s #{@name}, #{@size}, #{@sugars}"
  end

  def coffee_ready
    if(@ready_time <= Time.now) 
      coffee_ready_for_collection.push(self)
    else
      "Not Ready"
    end
  end

  def collected
    @collected = true
    collected_coffee << coffee_ready_for_collection.delete(self)
    return true
  end
end

def get_Order
  puts "Coffee Name"
  gets coffee.to_s
  puts "Sugars"
  gets sugars.to_s
  puts "Size"
  gets size.to_s
  puts "Customer Name"
  gets name.to_s
  Coffee(Coffee.new('latte','2 sugars','medium','Darryl'))
end


binding.pry
