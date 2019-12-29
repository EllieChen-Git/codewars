// Question (with link): https://www.codewars.com/kata/find-the-missing-letter/train/javascript

// #Find the missing letter
// Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
// You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
// The array will always contain letters in only one case.

// My answer:

    const lowerAlphabet = [..."abcdefghijklmnopqrstuvwxyz"];
    const lowerArray = array
      .join("")
      .toLowerCase()
      .split("");
    const index = lowerAlphabet.indexOf(lowerArray[0]);

    for (let i = index; i < index + lowerArray.length + 1; i++) {
      if (lowerAlphabet[i] !== lowerArray[i - index]) {
        return array[0] === array[0].toLowerCase()
          ? lowerAlphabet[i]
          : lowerAlphabet[i].toUpperCase();
      }
    }


console.log(findMissingLetter(["a", "b", "c", "d", "f"])); //"e"  // a 0 , length 5
console.log(findMissingLetter(["o", "p", "q", "s"])); //"r"       // o 14, length 4
console.log(findMissingLetter(["O", "Q", "R", "S"])); // "P"

// Best practice in CodeWars:
function findMissingLetter(array) {
    let first = array[0].charCodeAt(0); //calculate the charCode of the first element in the array
    for (let i = 1; i < array.length; i++) {
      if (first + i !== array[i].charCodeAt(0)) {
        //compare the charCode of array element to regular charCode sequence
        return String.fromCharCode(first + i); //convert charCode back to alphabet
      }
    }

// Methods used:

