Primitives
These six types are considered to be primitives. A primitive is not an object and has no methods of its own. All primitives are immutable.
- Boolean — true or false
- Null — no value
- Undefined — a declared variable but hasn’t been given a value
- Number — integers, floats, etc
- String — an array of characters i.e words
- Symbol — a unique value that's not equal to any other value


__.filter (array)__: creates a new array with all elements that pass the test implemented by the provided function.
    array.filter(Boolean) => filter all the "true" elements
    https://devdocs.io/javascript/global_objects/array/filter

```javascript
const words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present'];

const result = words.filter(word => word.length > 6);

console.log(result);
// expected output: Array ["exuberant", "destruction", "present"]

```

__How to count elements in array (1)__

```javascript
    let i = 0;
    for (let element of array) {
        if (element === true){
            i++;
        }
    }

    console.log(i)
```

__How to count elements in array (2)__

```javascript
let count = 0;
for(let i = 0; i < array.length; ++i){
    if(array[i] == true)
        count++;
}
```

__How to add up all elements in array__
```javascript
let sum = array.reduce((a,b) => a+b);
```