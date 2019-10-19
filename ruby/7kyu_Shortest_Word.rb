# Question (with link): https://www.codewars.com/kata/shortest-word/train/ruby
    # Simple, given a string of words, return the length of the shortest word(s).
    # String will never be empty and you do not need to account for different data types.

# My answer:

def find_short(s)
    p s.split.map(&:length).min
                                 # .split: turn string into an array of words
                                 # .map(&:length): convert each word into its character length
                                 # .min: return the smallest number
end

find_short("lets talk about javascript the best language")# 3)
find_short("i want to travel the world writing code one day")# 1)
find_short("Lets all go on holiday somewhere very cold")# 2)

# Best practice in CodeWars:
    #My answer is pretty much the same as the best practice.

# Methods used:
    # .scan(/\w+/): will achieve the same effect as .split #a person use regex to solve this problem and I think it's cool!
    # .min [array]: Returns the object in ary with the minimum value. 





