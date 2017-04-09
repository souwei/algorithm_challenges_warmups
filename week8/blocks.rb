require 'pry'
@letter_blocks = [['B','O'],
['X','K'],
['D','Q'],
['C','P'],
['N','A'],
['G','T'],
['R','E'],
['T','G'],
['Q','D'],
['F','S'],
['J','W'],
['H','U'],
['V','I'],
['A','N'],
['E','R'],
['F','S'],
['L','Y'],
['P','C'],
['Z','M']]

def can_make_word(word)
  word_array = word.split("")
  character_checking = word_array.length
  character_count = 0
  #try index
  word_array.each do | chararacter |
    #problem lies here mapping through all 38
    @letter_blocks.map { | pair_block |
      if pair_block.include?(chararacter)
        character_count += 1
        @letter_blocks.delete(self)
      end
    }

    # @letter_blocks.map { | pair_block |
    #   pair_block.delete_if {
    #     pair_block.include?(chararacter)
    #     character_count += 1
    #   }
    # }
  end
  puts "chararacters found #{character_count}"
  puts "baseline #{character_checking}"

  if character_count === character_checking
    return true
  else
    return false
  end
end
binding.pry
#puts can_make_word("A")
# => true
# puts can_make_word("BARK")
# # => true
# puts can_make_word("BOOK")
# # => false
# puts can_make_word("TREAT")
# # => true
# puts can_make_word("COMMON")
# # => false
# puts can_make_word("SQUAD")
# # => true
# puts can_make_word("CONFUSE")
# # => true
# puts can_make_word("BOUGHT")
# => false
