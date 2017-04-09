require 'pry'

class Say
  @@number_table_tens = { 2 => "twenty", 3 => "thirty" ,
    4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy",
    8 => "eighty", 9 => "ninety"
  }

  @@number_table_singles = { 1 => "one", 2 => "two", 3 => "three" ,
    4 => "four", 5 => "five", 6 => "six" , 7 => "seven", 8 => "eight",
    9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
    14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
    18 => "eighteen", 19 => "nineteen"
  }

  def initialize(num)
    @number = num
  end

  def in_english
    if @number.between?(0,99)

      if @number > 19
        number_string = @number.to_s.split("")
        first_word = @@number_table_tens[number_string[0].to_i]
        second_word = @@number_table_singles[number_string[1].to_i]
        "#{first_word}-#{second_word}"
      else
        @@number_table_singles[@number]
      end

    else
      "Number must be between 0 and 99, inclusive. (ArgumentError)"
    end

  end

end

class Fixnum
  def in_english
    Say.new(self).in_english
  end
end


binding.pry
