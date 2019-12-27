// Question (with link): https://www.codewars.com/kata/bit-counting/train/javascript
// Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

// Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

// My answer:

const countBits = function(n) {
  const binary = n.toString(2);

  let count = 0;
  for (let i of binary) {
    if (i === "1") {
      count++;
    }
  }
  return count;
};

console.log(countBits(0)); // 0
console.log(countBits(4)); // 1
console.log(countBits(7)); // 3
console.log(countBits(9)); // 2
console.log(countBits(10)); // 2

// Best practice in CodeWars:

countBits = n =>
  n
    .toString(2)
    .split("0")
    .join("").length;

// Methods used:
