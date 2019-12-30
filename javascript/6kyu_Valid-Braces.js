// Question (with link): https://www.codewars.com/kata/valid-braces/train/javascript

// Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.
// This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!
// All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

// What is considered Valid? A string of braces is considered valid if all braces are matched with the correct brace.

function validBraces(braces) {}

console.log(validBraces("(){}[]")); //  True
console.log(validBraces("([{}])")); //  True
console.log(validBraces("(}")); //  False
console.log(validBraces("[(])")); //  False
console.log(validBraces("[({})](]")); //  False

// Best practice in CodeWars:

function validBraces(braces) {
  var matches = { "(": ")", "{": "}", "[": "]" };
  var stack = [];
  var currentChar;

  for (var i = 0; i < braces.length; i++) {
    currentChar = braces[i];

    if (matches[currentChar]) {
      // opening braces
      stack.push(currentChar);
    } else {
      // closing braces
      if (currentChar !== matches[stack.pop()]) {
        return false;
      }
    }
  }

  return stack.length === 0; // any unclosed braces left?
}

// My favourite solution:

function validBraces(str) {
  var prev = "";
  while (str.length != prev.length) {
    prev = str;
    str = str
      .replace("()", "")
      .replace("[]", "")
      .replace("{}", "");
  }
  return str.length === 0;
}

// Methods used: