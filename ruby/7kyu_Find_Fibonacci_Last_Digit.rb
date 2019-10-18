# Question (with link): https://www.codewars.com/kata/find-fibonacci-last-digit/train/ruby
    # As you probably know, Fibonacci sequence are the numbers in the following integer sequence: 1, 1, 2, 3, 5, 8, 13... Write a method that takes the index as an argument and returns last digit from Fibonacci number. Example: getLastDigit(15) - 610. Your method must return 0 because the last digit of 610 is 0. Fibonacci sequence grows very fast and value can take very big numbers (bigger than integer type can contain), so, please, be careful with overflow.

# My answer:

def get_last_digit(index)
  p arr = (2..index).inject([1]) { |x| x << x.last(2).sum}  # return the array of Fibonacci sequence
                                                                   # .inject([1]: the sequence in this exercise start from 1
                                                                   # (2..index): will push (index - 1) numbers to the arrays
  p num = arr.last % 10     # grab the last element of the array & modulus of 10 will return the last digit of a number
end

get_last_digit(10) #5)
get_last_digit(234) #2)


# Best practice in CodeWars:
  # I reckon my method is the best among all the answers lol

# Methods used:
  # See above.
