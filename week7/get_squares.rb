require 'pry'

def get_squares(numbers_array)
  perfect_squares_array = []
  numbers_array.each { |num_element |
    num_element.to_i
    if(Math.sqrt(num_element)%1).zero?
      if(perfect_squares_array.include?(num_element))
      else
        perfect_squares_array << num_element
      end
    end

  }
  perfect_squares_array.sort

end

puts get_squares([4, 1, 16, 1, 10, 35, 22])
binding.pry
