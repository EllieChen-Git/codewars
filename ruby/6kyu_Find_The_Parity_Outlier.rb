# Question (with link): https://www.codewars.com/kata/find-the-parity-outlier/train/ruby
    # Very  similar to 6kyu_IQ_Test

    # You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# My answer:
    def find_outlier(integers)                                                   
        if integers.count {|x| x.even?} > 1                    
            p integers.select {|num| num.odd?}.join.to_i
        else                                                   
            p integers.select {|num| num.even?}.join.to_i     
        end
    end

# My updated answer:
    def find_outlier(integers)                                                   
        if integers.count(&:even?) > 1                    
            p integers.select(&:odd?).last       #.first (or .last) can achieve the same effect as .join.to_i
        else                                                   
            p integers.select(&:even?).first        
        end
    end 

# Best practice in CodeWars:
    def find_outlier(integers)
        integers.partition(&:odd?).find(&:one?).first
        # p integers.partition(&:odd?): separate integers into 2 arrays. 1 array with odd numbers only, and the other one with even numbers only
        # p integers.partition(&:odd?).find(&:one?): find the array with only 1 element
    end

# My favourite solution:
    def find_outlier(integers)
        integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
    end

find_outlier([0, 1, 2]) #1
find_outlier([1, 2, 3]) #2
find_outlier([2,6,8,10,3]) #3
find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) #11

# Methods used:
    # .partition [string -> array]: Searches sep or pattern (regexp) in the string and returns the part before it, the match, and the part after it. If it is not found, returns two empty strings and str.
    # *partition(sep) → [head, sep, tail]
    # *partition(regexp) → [head, match, tail]
    #     [0, 1, 2].partition(&:odd?) #=>  [[1], [0, 2]]
    #     [1, 2, 3].partition(&:odd?) #=> [[1, 3], [2]]

    # .find(&:one?): 
    #     [0, 1, 2].partition(&:odd?).find(&:one?) #=>  [1]
    #     [1, 2, 3].partition(&:odd?).find(&:one?) #=>  [2]
