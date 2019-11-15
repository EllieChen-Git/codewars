# Question (with link): codewars.com/kata/525f039017c7cd0e1a000a26
    # Number is a palindrome if it is equal to the number with digits in reversed order. For example, 5, 44, 171, 4884 are palindromes and 43, 194, 4773 are not palindromes.

    # Write a method palindrome_chain_length which takes a positive number and returns the number of special steps needed to obtain a palindrome. The special step is: "reverse the digits, and add to the original number". If the resulting number is not a palindrome, repeat the procedure with the sum until the resulting number is a palindrome.
    # If the input number is already a palindrome, the number of steps is 0.
    # Input will always be a positive integer.
    # For example, start with 87:
    # 87 + 78 = 165; 165 + 561 = 726; 726 + 627 = 1353; 1353 + 3531 = 4884
    # 4884 is a palindrome and we needed 4 steps to obtain it, so palindrome_chain_length(87) == 4

# My answer:
def palindrome_chain_length(n)
 p new_n = n.digits.join.to_i

    if n.to_s.length == 1
        p 0
    else
        while new_n.to_s.reverse != new_n.to_s
            count = 0
           p  new_n = n + new_n
            count +=1
        end
    end
    p count
end

# palindrome_chain_length(5) # 
# palindrome_chain_length(171) # 
# palindrome_chain_length(4884) # 

palindrome_chain_length(87) #4 
# palindrome_chain_length(43) # 
# palindrome_chain_length(194) #
# palindrome_chain_length(4773) # 

# Best practice in CodeWars:


# Methods used:




        # if new_n == new_n.reverse
        #     p count
        # else
        #     new_n == new_n.reverse + new_n 
        #     count +=1
        # end