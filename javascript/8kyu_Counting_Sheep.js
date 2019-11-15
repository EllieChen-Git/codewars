// Question (with link): https://www.codewars.com/kata/54edbc7200b811e956000556/solutions/javascript
    // For example,
    // [true,  true,  true,  false,
    //   true,  true,  true,  true ,
    //   true,  false, true,  false,
    //   true,  false, false, true ,
    //   true,  true,  true,  true ,
    //   false, false, true,  true]
    // The correct answer would be 17.
    // Hint: Don't forget to check for bad values like null/undefined

// My answer:

    function countSheeps(arrayOfSheep) {
        let i = 0;
        for (let element of arrayOfSheep) {
            if (element === true){
                i++;
            } else {
            continue; }
        }
        return i
      }

    console.log(countSheeps(arrayOfSheeps));

// Best practice in CodeWars:
    function countSheeps(arrayOfSheeps) {
        return arrayOfSheeps.filter(Boolean).length;
    }

// Methods used:
.filter(array)

