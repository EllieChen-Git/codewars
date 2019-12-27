// Question (with link): https://www.codewars.com/kata/your-order-please/train/javascript
// Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

// Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

// If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

// My answer:
function order(words) {
  let wordArray = words.split(" ");
  let arr = [];

  if (words.length === 0) {
    return "";
  }

  for (let number = 1; number < 10; number++) {
    for (let word of wordArray) {
      if (word.match(number)) {
        arr.push(word);
      }
    }
  }
  return arr.join(" ");
}

console.log(order("is2 Thi1s T4est 3a")); // "Thi1s is2 3a T4est"
console.log(order("4of Fo1r pe6ople g3ood th5e the2")); // "Fo1r the2 g3ood 4of th5e pe6ople"
console.log(order("")); // ""

// Best practice in CodeWars:

function order(words) {
  return words
    .split(" ")
    .sort(function(a, b) {
      return a.match(/\d/) - b.match(/\d/); // /\d/: match any one digit Digits are [0-9]
    })
    .join(" ");
}
