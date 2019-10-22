# Question (with link): https://www.codewars.com/kata/binary-addition/train/ruby
    # Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.
    # The binary number returned should be a string.

# My answer:

def add_binary(a,b)
    sum = a + b
    arr = []
    if sum == 1
        p "1"
    else                            #if sum != 1
        arr.push(sum % 2)           
        while sum / 2 != 0
            sum = sum / 2
            arr.push(sum % 2)
        end
        p arr.reverse.join
    end
end

add_binary(1,1)# 2 => "10")
add_binary(0,1)# 1  => "1")
add_binary(1,0)# "1")
add_binary(2,2)# 4  => "100")
add_binary(51,12)# 63  => "111111")

# Best practice in CodeWars:
    def add_binary(a,b) (a+b).to_s(2) end #There is a default method in Ruby (see below) to convert number from base 10 to other basese

# Methods used:

.to_s(base=10)[integer -> string]: Returns a string containing the place-value representation of int with radix base (between 2 and 36).
    12345.to_s       #=> "12345"
    12345.to_s(2)    #=> "11000000111001"
    12345.to_s(8)    #=> "30071"
    12345.to_s(10)   #=> "12345"
    12345.to_s(16)   #=> "3039"
    12345.to_s(36)   #=> "9ix"


