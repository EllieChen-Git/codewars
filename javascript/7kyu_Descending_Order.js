// Question (with link): https://www.codewars.com/kata/descending-order/train/javascript
    // Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
    // Examples:
    // Input: 21445 Output: 54421
    // Input: 145263 Output: 654321
    // Input: 1254859723 Output: 9875543221

// My answer:
function descendingOrder(n){
    let digits = n.toString().split("");
    // Convert number to string, and turn each digit in the number into an array
    let sortedDigits = digits.sort(function(a, b) {
        return b - a;
        });
    // Sort the array in descending order
    return parseInt(sortedDigits.join(""));  
    // Convert digits array back to a whole number 
}

console.log(descendingOrder(0)) //0
console.log(descendingOrder(21445)) //54421
console.log(descendingOrder(1254859723)) //9875543221

// Best practice in CodeWars:
    // My answer is pretty similar to the best practice.

// Methods used:
    // .toString
    // .split("")
    // .sort(funcation(a, b))
    // .join
    // parseInt

