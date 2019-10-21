# Question (with link): https://www.codewars.com/kata/youre-a-square/train/ruby
# A square of squares
    # You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

    # However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

    # Given an integral number, determine if it's a square number:

    # In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
    
    # The tests will always use some integral number, so don't worry about that in dynamic typed languages.

# My answer:
    def is_square(x)
        if x < 0
            p false
        else
            if Math.sqrt(x) % 1 == 0.0
                p true
            else
                p false
            end
        end
    end

is_square(-1) #false
is_square(0) # true
is_square(3) # false
is_square(4) # true
is_square(25) #true  
is_square(26) #false

# Best practice in CodeWars:
    def is_square(x)
        x < 0 ? false : Math.sqrt(x) % 1 == 0
    end

# My favourite solution:
    def is_square(x)
        (0..x).any?{|i|i*i==x}
    end

# Methods used:
    # Integer.sqrt(n) [Integer -> Integer]: Returns the integer square root of the non-negative integer n, i.e. the largest non-negative integer less than or equal to the square root of n.
    #     Integer.sqrt(0)        #=> 0
    #     Integer.sqrt(1)        #=> 1
    #     Integer.sqrt(24)       #=> 4
    #     Integer.sqrt(25)       #=> 5

    # Math.sqrt(x) [Integer -> Float]:Returns the non-negative square root of x.







