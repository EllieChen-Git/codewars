// Question (with link): https://www.codewars.com/kata/unique-in-order/train/javascript

// Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

// My answer:

const uniqueInOrder = function(iterable) {
  let arr = [...iterable]; // Use Spread Syntax to change iterable to array if it's a string
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === arr[i + 1]) {
      arr.splice(i, 1); //Remove the duplicate item next to
      i--; //Avoid skipping the next item as we keep incrementing our index
    }
  }
  return arr;
};

console.log(uniqueInOrder("AAAABBBCCDAABBB")); // ['A', 'B', 'C', 'D', 'A', 'B']
console.log(uniqueInOrder("ABBCcAD")); // ['A', 'B', 'C', 'c', 'A', 'D']
console.log(uniqueInOrder([1, 2, 2, 3, 3])); // [1,2,3]

// Best practice in CodeWars:

function uniqueInOrder(it) {
  var result = [];
  var last;

  for (var i = 0; i < it.length; i++) {
    if (it[i] !== last) {
      result.push((last = it[i]));
    }
  }

  return result;
}

// My favourite solution in CodeWars:

var uniqueInOrder = function(iterable) {
  return [...iterable].filter((a, i) => a !== iterable[i - 1]);
};

// Methods used:

// - Spread Syntax
// - Array.splice
