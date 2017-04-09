require 'pry'
class Scrabble
  @@score_1 = ["A","E","I","O","U","L","N","R","S","T"]
  @@score_2 = ["D","G"]
  @@score_3 = ["B","C","M","P"]
  @@score_4 = ["F","H","V","W","Y"]
  @@score_5 = ["K"]
  @@score_8 = ["J","K"]
  @@score_10 = ["Q","Z"]
  @@score_table = {
    @@score_1 => "1",
    @@score_2 => "2",
    @@score_3 => "3",
    @@score_4 => "4",
    @@score_5 => "5",
    @@score_8 => "8",
    @@score_10 => "10"
  }
  @@score_counter = 0
  @@remaining_double_letter_tiles = 24

  def self.score(word)
    word = word.upcase
    word_array = word.split("")
    word_array.each do |letter|
      @@score_table.each do |key,value|
        if key.include?(letter)
          @@score_counter += value.to_i
        end
      end
    end
  end

end
binding.pry
