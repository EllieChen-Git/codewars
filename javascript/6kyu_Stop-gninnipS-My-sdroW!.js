// Question (with link): https://www.codewars.com/kata/stop-gninnips-my-sdrow/train/javascript
// Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

// Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"

// My answer:
function spinWords(str) {
  const words = str.split(" ");
  const arr = [];
  for (let word of words) {
    if (word.length >= 5) {
      const reverseWord = word
        .split("")
        .reverse()
        .join("");
      arr.push(reverseWord);
    } else {
      arr.push(word);
    }
  }
  return arr.join(" ");
}

console.log(spinWords("Welcome")); // "emocleW"
console.log(spinWords("Hey fellow warriors")); // "Hey wollef sroirraw"
console.log(spinWords("This is a test")); // "This is a test"
console.log(spinWords("You are almost to the last test")); // "You are tsomla to the last test"

// Best practice in CodeWars:

function spinWords(words) {
  return words
    .split(" ")
    .map(function(word) {
      return word.length > 4
        ? word
            .split("")
            .reverse()
            .join("")
        : word;
    })
    .join(" ");
}

// My favourite answer in CodeWars:

function spinWords(string) {
  return string.replace(/\w{5,}/g, function(w) {
    //: \w means ANY ONE word character. For ASCII, word characters are [a-zA-Z0-9_]
    // {5,}: means 5 or more
    return w
      .split("")
      .reverse()
      .join("");
  });
}

// Methods used:
