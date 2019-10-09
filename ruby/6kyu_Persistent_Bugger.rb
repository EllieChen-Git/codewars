# Question:
#     Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

# Example:
#     persistence(39): returns 3, because 3*9=27, 2*7=14, 1*4=4, and 4 has only one digit
#     persistence(999): returns 4, because 9*9*9=729, 7*2*9=126, 1*2*6=12, and finally 1*2=2
#     persistence(4): returns 0, because 4 is already a one-digit number

# My answer:
    def persistence(number)
        if number.to_s.length == 1               #count digits in number: convert number into string & count the characters inside that string
            p 0                                  #if there's only 1 digit in number => print 0
        else                                                     #if there are more than 1 digit in number
            multiplication = number.digits.inject(:*)            #.digits: return an array with each digit in number
            count = 1                                            #.inject(:*): multiply each digit in the array
            while multiplication.to_s.length > 1                 #if there's more than 1 digit in the multiplication, then multiply itself
            multiplication = multiplication.digits.inject(:*)    #till there's only 1 digit left. 
                count +=1                                        #for each multiplication, count +=1
            end
            p count
        end
    end

# My answer (updated version):
    def persistence(number)
        count = 0                                # if number is 0..9 (i.e. 1 digit), return 0
        while number > 9                         # if there are more than 2 digits in the number                     
            number = number.digits.inject(:*)    # multiply them until there's only 1 digit left        
            count +=1                            # count +=1 for every multiplication   
        end
        p count
    end

persistence(4)
persistence(25)
persistence(39)
persistence(999)

#Best practice in CodeWars:
    # def persistence(n)
    #     n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
    # end
