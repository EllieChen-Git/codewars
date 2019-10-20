# Question (with link): https://www.codewars.com/kata/sum-times-tables/train/ruby
    # Write a function sumTimesTables which sums the result of the sums of the elements specified in tables multiplied by all the numbers in between min and max including themselves.
    # All the numbers are integers but you must take in account:
        # tables could be empty.
        # min could be negative.
        # max could be really big.
        
# Example:
    # For example, for sumTimesTables([2,5],1,3) the result should be the same as
    # 2*1 + 2*2 + 2*3 +
    # 5*1 + 5*2 + 5*3
    # i.e. the table of two from 1 to 3 plus the table of five from 1 to 3


# My answer:
def sum_times_tables(table,a,b)
    arr = []
    for i in (a..b)
        for j in table
            num = i * j
            arr.push(num)
        end
    end
    p arr.sum
end

# Best practice in CodeWars:
def sum_times_tables(table,a,b)
    (a..b).inject(:+)*table.inject(0,:+)
end
# (a..b).inject(:+): sum numbers in range a..b, eg. (1..3).inject(:+) = 1 + 2 + 3 => 6
# table.inject(0,:+): sum numbers in table. Need to set initial value as '0' to avoid TypeError (in the case that table is any empty array)

# My favourite solution in CodeWars:
def sum_times_tables(table,a,b)
   p table.sum * (a..b).sum
end
sum_times_tables([2,3],1,3) # 30)
sum_times_tables([1,3,5],1,10) # 495)
sum_times_tables([],1,10) # 0)
sum_times_tables([10,9,8,7,6,5,4,3,2,1],1,10) # 3025)
sum_times_tables([-2,2],-1,3) # 0)
