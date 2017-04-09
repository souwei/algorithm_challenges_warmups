require 'pry'
class Dice
  @@rolls = []
  def self.roll(number=nil)
    if number == nil
      score = rand(1..6)
      @@rolls.push(score)
      self
    else
      number.times do
      score = rand(1..6)
      @@rolls.push(score)
      end
      self
    end
  end

  def self.sum
    puts @@rolls
  end
end

# class Array
#   def sum
#     total_sum = self.inject(0,:+)
#     return [self,total_sum]
#   end
# end
binding.pry
