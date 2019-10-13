# Question (with link):https://www.codewars.com/kata/list-filtering/train/ruby
# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

# My answer:

def filter_list(l)
    length = l.length
      for i in 0...length
          l.delete_if {|i| i.class == String}
      end
      p l
end
    
filter_list([1,2,'a','b']) #[1,2]
filter_list([1,'a','b',0,15]) # [1,0,15]
filter_list([1,2,'aasf','1','123',123]) # [1,2,123]


# Best practice in CodeWars:
def filter_list(l)
    l.reject { |x| x.is_a? String }
end

# My Personal Favourite Solution:
def filter_list(l)
    l.grep(Numeric)
end

# Methods used:
# .is_a? [object]: Returns true if class is the class of obj, or if class is one of the superclasses of obj or modules included in obj.

# .reject [array -> array](See also .delete_if): Returns a new array containing the items in self for which the given block is not true. The ordering of non-rejected elements is maintained. 

# .select [array -> array] (.filter is an alias for .select): Returns a new array containing all elements of ary for which the given block returns a true value.
#     # [1,2,3,4,5].select {|num| num.even? }     #=> [2, 4]
#     # a = %w[ a b c d e f ]
#     # a.select {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]

# .keep_if [array -> array](See also .select): Deletes every element of self for which the given block evaluates to false, and returns self.
#     # a = %w[ a b c d e f ]
#     # a.keep_if {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]
#     # a                                  #=> ["a", "e"]

# .grep [pattern -> array]: Returns an array of every element in enum for which Pattern === element. If the optional block is supplied, each matching element is passed to it, and the block's result is stored in the output array.
#     # (1..100).grep 38..44   #=> [38, 39, 40, 41, 42, 43, 44]