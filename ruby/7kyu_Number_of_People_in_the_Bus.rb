# Question:
    # There is a bus moving in the city, and it takes and drop some people in each bus stop.
    # You are provided with a list (or array) of integer arrays (or tuples). Each integer array has two items which represent number of people get into bus (The first item) and number of people get off the bus (The second item) in a bus stop.
    # Your task is to return number of people who are still in the bus after the last bus station (after the last array). Even though it is the last bus stop, the bus is not empty, and some people are still in the bus, and they are probably sleeping there :D
    # Take a look on the test cases.
    # Please keep in mind that the test cases ensure that the number of people in the bus is always >= 0. So the return integer can't be negative.
    # The second value in the first integer array is 0, since the bus is empty in the first bus stop.

# Example:
    # Test.assert_equals number([[10, 0], [3, 5], [5, 8]]), 5
    # Test.assert_equals number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]), 17
    # Test.assert_equals number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]), 21
  

# My answer:
def number(bus_stops)
    item_1 = bus_stops.sum(&:first)   #return the sum of first elements in arrays (i.e. people get on the bus)
    item_2 = bus_stops.sum(&:last)    #return the sum of last elements in arrays (i.e. people get off the bus)
    p passengers = item_1 - item_2
end

number([[10, 0], [3, 5], [5, 8]]) #5
number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]) #17
number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]) #21

# Methods used in my answer:
# .sum (array method): Returns the sum of elements
# .first (array method): Returns the first element, or the first n elements, of the array. 
# .last (array method): Returns the last element(s) of self. 


#Best practice in CodeWars:
# def number(bus_stops)
#     bus_stops.map {|(on,off)| on - off }.reduce(:+)
# end
