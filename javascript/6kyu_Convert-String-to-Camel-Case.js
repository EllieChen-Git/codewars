// Question (with link): https://www.codewars.com/kata/convert-string-to-camel-case/train/javascript

// Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

// My answer:

function toCamelCase(str) {
  if (str.length === 0) {
    return "";
  } else {
    const arr = str.replace(/_|-/g, " ").split(" "); // 1. replace '_' or '-' with a space, 2. separate words into words array
    const newArr = []; //Set a new array
    for (let i of arr) {
      //for all the elements in the array
      if (arr.indexOf(i) !== 0) {
        //if it's not the 1st element (index 0)
        const initialChar = i[0].toUpperCase(); //Upcase the 1st character
        const rest = i.substring(1).toLowerCase(); //Downcase the rest characters
        i = initialChar + rest; //then convert to camel case
      }
      newArr.push(i);
    }
    return newArr.join(""); //convert the array back to string without space
  }
}

console.log(toCamelCase("")); // '', "An empty string was provided but not returned")
console.log(toCamelCase("the_stealth_warrior")); // "theStealthWarrior", "toCamelCase('the_stealth_warrior') did not return correct value")
console.log(toCamelCase("The-Stealth-Warrior")); // "TheStealthWarrior", "toCamelCase('The-Stealth-Warrior') did not return correct value")
console.log(toCamelCase("A-B-C")); // "ABC", "toCamelCase('A-B-C') did not return correct value")

// Best practice in CodeWars:

function toCamelCase(str) {
  var regExp = /[-_]\w/gi;
  return str.replace(regExp, function(match) {
    return match.charAt(1).toUpperCase();
  });
}

// Pseudo Code:

// 1. empty string return empty string
// 2. separate string with "-" or "_" into array => later change to replace "-" or "_" with space
// 3. first arr element remain what it is
// 4. other elements in array => camel case
// 5. join all the elements back to array
