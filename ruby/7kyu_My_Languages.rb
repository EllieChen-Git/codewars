# Question: https://www.codewars.com/kata/5b16490986b6d336c900007d
    # You are given a dictionary/hash/object containing some languages and your test results in the given languages. Return the list of languages where your test score is at least 60, in descending order of the results.
    # Note: There will be no duplicate values.

# My answer:

def my_languages(results)
    p results.sort_by{|key, value| value}.reverse.map{|key, value| key if value >= 60}.delete_if{|key| key == nil}
    # 1. sort hash by its values in descending order (sort_by .reverse)
    # 2. only return keys if its key >=60
    # 3. for keys with values < 60, the array will return 'nil'. Therefore, deleting the 'nil' keys in the end
end

my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65}) #["Ruby", "Python"]
my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71}) #["Dutch", "Greek", "Hindi"]
my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20}) #[]

# Methods used in my answer:
    # .delete_if: Deletes every element of self for which block evaluates to true.

#Best practice in CodeWars:
    # def my_languages(results)
    #     results.keys.select {|k| results[k]>=60}.sort_by {|k| -results[k]}
    # end
        # .sort_by: sort in ascending order. In order to sort in descending order, either use '.sort_by.reverse' or 'sort_by -results[k] (negative numbers)'
        # .select: Returns a new hash consisting of entries for which the block returns true.