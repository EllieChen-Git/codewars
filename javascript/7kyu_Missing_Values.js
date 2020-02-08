// Question (with link): https://www.codewars.com/kata/58a66c208b88b2de660000c3/train/javascript

// You are given an array of positive ints where every element appears three times, except one that appears only once (let's call it x) and one that appears only twice (let's call it y).
// Your task is to find x * x * y.

// Example
// For arr=[1, 1, 1, 2, 2, 3], the result should be 18
// 3 x 3 x 2 = 18
// For arr=[6, 5, 4, 100, 6, 5, 4, 100, 6, 5, 4, 200], the result should be 4000000
// 200 x 200 x 100 = 4000000

// Input/Output
// [input] integer array arr
// an array contains positive integers.

// [output] an integer
// The value of x * x * y

// My answer:

function missingValues(a) {
  const initialValue = {};
  const reducer = (count, element) => {
    if (!count[element]) {
      count[element] = 1;
    } else {
      count[element]++;
    }
    return count;
  };
  const obj = arr.reduce(reducer, initialValue);
  const x = Object.keys(obj).find(key => obj[key] === 1);
  const y = Object.keys(obj).find(key => obj[key] === 2);
  return x * x * y;
}

console.log(missingValues([1, 1, 1, 2, 2, 3])); //18
console.log(missingValues([6, 5, 4, 100, 6, 5, 4, 100, 6, 5, 4, 200])); //4000000
console.log(
  missingValues([96, 56, 24, 46, 75, 46, 75, 21, 46, 21, 75, 96, 56, 96, 56])
); //12096

// Best practice in CodeWars:

function missingValues(a) {
  const x = a.find(v => a.filter(w => v === w).length === 1);
  const y = a.find(v => a.filter(w => v === w).length === 2);
  return x * x * y;
}
