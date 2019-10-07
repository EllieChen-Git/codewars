# Question: 
    # Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
    # ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

# Example:
    # iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even
    # iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

# My answer:
    def iq_test(numbers)
    array = numbers.split.map(&:to_i)                          # convert (numbers in string) into (numbers in array)
    length = array.length                                      # length: the number of elements in array
        if array.count {|x| x % 2 == 0} > 1                    # array with even numbers
            for i in 0...length
                odd_num = array[i] if array[i] % 2 != 0        # find odd number
            end
            p array.index(odd_num) + 1                         # print out the index of odd num + 1 (coz index starting from 1 in this case)
        else                                                   # array with odd numbers
            for j in 0...length
                even_num = array[j] if array[j] % 2 == 0       # find even number
            end
            p array.index(even_num) + 1                        # print out the index of even num + 1 (coz index starting from 1 in this case)
        end
    end

iq_test("2 4 7 8 10")
iq_test("1 2 1 1")


#Best practice in CodeWars:
    # def iq_test(numbers)
    #     nums = numbers.split.map(&:to_i).map(&:even?)
    #     nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
    # end
