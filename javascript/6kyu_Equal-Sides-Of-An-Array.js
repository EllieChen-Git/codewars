// Question (with link): https://www.codewars.com/kata/equal-sides-of-an-array/train/javascript

// You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

// For example:

// Let's say you are given the array {1,2,3,4,3,2,1}:
// Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

// Let's look at another one.
// You are given the array {1,100,50,-51,1,1}:
// Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

// Last one:
// You are given the array {20,10,-80,10,10,15,35}
// At index 0 the left side is {}
// The right side is {10,-80,10,10,15,35}
// They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
// Index 0 is the place where the left side and right side are equal.

// Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

// Input:
// An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

// Output:
// The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

// Note:
// If you are given an array with multiple answers, return the lowest correct index.

// My answer:

function findEvenIndex(arr) {
  for (let i = 1; i < arr.length - 1; i++) {
    let subArr1 = arr.slice(0, i).reduce((a, b) => a + b);
    let subArr2 = arr.slice(i + 1, arr.length).reduce((a, b) => a + b);
    if (subArr1 === subArr2) {
      return i;
    }
  }
  return -1;
}

// Tests passed:
console.log(findEvenIndex([1, 2, 3, 4, 3, 2, 1])); //3,
console.log(findEvenIndex([1, 100, 50, -51, 1, 1])); //1,
console.log(findEvenIndex([1, 2, 3, 4, 5, 6])); //-1,
console.log(findEvenIndex([20, 10, 30, 10, 10, 15, 35])); //3

// Tests didn't passed:
console.log(findEvenIndex([20, 10, -80, 10, 10, 15, 35]));
//0, [] 20 [10, -80, 10, 10, 15, 35] -> left_sum = 0, right_sum = 0, index_value = 20, index=1
console.log(findEvenIndex([10, -80, 10, 10, 15, 35, 20]));
//[10, -80, 10, 10, 15, 35] 20 [] -> left_sum = 0, right_sum = 0, index_value = 20, index=6

// Best practice in CodeWars:
function findEvenIndex(arr) {
  for (var i = 1; i < arr.length - 1; i++) {
    if (
      arr.slice(0, i).reduce((a, b) => a + b) ===
      arr.slice(i + 1).reduce((a, b) => a + b)
    ) {
      return i;
    }
  }
  return -1;
}

// Ellie's note: My solution is almost identical as the best practice. However, my code didn't pass all the tests??? Maybe there were some bugs in the tests?
