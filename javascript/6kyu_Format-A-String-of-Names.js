// Question (with link): https://www.codewars.com/kata/format-a-string-of-names-like-bart-lisa-and-maggie/train/javascript

// Given: an array containing hashes of names
// Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

// My answer:

function list(names) {
  let arr = [];
  for (let i of names) {
    arr.push(i.name);
  }

  return arr.join(", ").replace(/(.*),(.*)/, "$1 &$2");
}

console.log(
  list([
    { name: "Bart" },
    { name: "Lisa" },
    { name: "Maggie" },
    { name: "Homer" },
    { name: "Marge" }
  ])
); // 'Bart, Lisa, Maggie, Homer & Marge',
console.log(list([{ name: "Bart" }, { name: "Lisa" }, { name: "Maggie" }])); // 'Bart, Lisa & Maggie',
console.log(list([{ name: "Bart" }, { name: "Lisa" }])); // 'Bart & Lisa',
console.log(list([{ name: "Bart" }])); //'Bart'
console.log(list([])); // "", "Must work with no names");

// Best practice in CodeWars:

function list(names) {
  return names.reduce(function(prev, current, index, array) {
    if (index === 0) {
      return current.name;
    } else if (index === array.length - 1) {
      return prev + " & " + current.name;
    } else {
      return prev + ", " + current.name;
    }
  }, "");
}

// Methods used:

//Solution from mojodev in codewars: https://www.codewars.com/kata/reviews/552fd3b9d04dfa81d4000143/groups/561413d93a2f83b726000075
var list = names =>
  names
    .map(x => x.name)
    .join(", ")
    .replace(/(.*),(.*)$/, "$1 &$2");

// . (dot): ANY ONE character except line breaks.
// * (Quantifier): Match 0 or more of the preceding token.
// (.*): same as .* but will add that to a capture group.
// $1, $2: retrieve the back references in sequential order. values of captured groups by index. $1 is a first captured group, and $2 is a second captured group.
