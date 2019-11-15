# Question (with link): https://www.codewars.com/kata/youre-a-square/train/ruby
    # Consider an array of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

    # For example,

    # [true,  true,  true,  false,
    # true,  true,  true,  true ,
    # true,  false, true,  false,
    # true,  false, false, true ,
    # true,  true,  true,  true ,
    # false, false, true,  true]
    # The correct answer would be 17.

    # Hint: Don't forget to check for bad values like null/undefined

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







