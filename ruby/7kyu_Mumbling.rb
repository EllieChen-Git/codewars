# Question: https://www.codewars.com/kata/mumbling/train/ruby
    # This time no story, no theory. The examples below show you how to write function accum:
    # The parameter of accum is a string which includes only letters from a..z and A..Z.

# My answer:
  def accum(string)        
      p string.chars.map.with_index {|char, index| (char * (index + 1 )).capitalize}.join("-")
  end

accum("abcd") # "A-Bb-Ccc-Dddd"
accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") # "C-Ww-Aaa-Tttt"

# Best practice in CodeWars:
  # def accum(s)
  #   s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
  # end

# Methods used:
  # .chars[string -> array]: Returns an array of characters in str. This is a shorthand for str.each_char.to_a.
  # .map (array -> array): Invokes the given block once for each element of self. Creates a new array containing the values returned by the block.
  # .with_index: Iterates the given block for each element with an index.
  #     a = [ "a", "b", "c", "d" ]
  #     a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
  # .each_with_index: Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().
  #     hash = Hash.new
  #     %w(cat dog wombat).each_with_index { |item, index|
  #       hash[item] = index
  #     }
  #     hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}