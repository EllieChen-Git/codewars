// Question (with link): https://www.codewars.com/kata/sum-of-positive/train/javascript
    // You get an array of numbers, return the sum of all of the positives ones.
    // Example [1,-4,7,12] => 1 + 7 + 12 = 20
    // Note: if there is nothing to sum, the sum is default to 0.


// My answer:

function positiveSum(arr) {    
    let positives = arr.filter(i => i > 0); //only getting positive numbers
    if (positives.length === 0){            // can't do if (positivies === []), can only compare primitive values
        return 0;                           //if array is empty, return 0
    } else {
        let sum = positives.reduce((a,b) => a+b);
        return sum;
    }
}


positiveSum([1,2,3,4,5]) //,15);
positiveSum([1,-2,3,4,5]) //,13);
positiveSum([]) //,0);
positiveSum([-1,-2,-3,-4,-5]) //,0);
positiveSum([-1,2,3,4,-5]) //,9);

// Best practice in CodeWars:

function positiveSum(arr) {
    var total = 0;    
    for (i = 0; i < arr.length; i++) {    // setup loop to go through array of given length
      if (arr[i] > 0) {                   // if arr[i] is greater than zero
        total += arr[i];                  // add arr[i] to total
      }
    }
    return total;                         // return total
  }


function positiveSum(arr) {
    return arr.reduce((a,b)=> a + (b > 0 ? b : 0), 0);
} 
// Methods used:
.filter(array)
.reduce(array)

