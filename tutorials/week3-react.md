---
layout: page
title: React Tutorial
permalink: /tutorials/week2-typescript-basics
parent: Tutorials
nav_order: 2
---

## React Hooks
React hooks are built-in functions which allows us to use state and other lifecycle features. The most basic hooks used by react are useState() which adds a state variable to a react component and useEffect() which is the lifecycle hook for a component. State of component referes to the data it is holding at a particular moment in time.

### useState():
In this section we will see how we can add state to a React Component using the useState() hook provided by React.
1. We'll start by defining and initializing state for the number of times the button is clicked, by adding the a state variable as follows:
```ts
import {useState} from 'react';

function Counter() {
    const [count, setCount] = useState(0);
    ...
}
```
This line of code looks a little strange, so let's break it down:

* First, we import the useState from react library.
* useState is a React function that lets us create state, passing in a default value as a parameter. In our case, we pass it a default value of 0.
* The useState function returns an array containing two elements:
* * The first array element contains the current value of state.
* * The second array element contains a function to set state to a different value.
* We destructure the array and store the first array element (the state value) in count, and the second array element (the function to set state) in setCount.
* The rest of the function now has access to the count, via the count variable. The function is also able to increment the count, via the setCount variable.   

2. Let's add a function to update the state of the variable:
```ts
function incrementCount() {
    setCount(count + 1);
  }
```
* Now, functions to set the piece of state take in the new state as their parameter.

3. Next we'll make the component return the count along with a button to increment the count when clicked. Final function code will be as follows:
```ts
import {useState} from 'react';
function Counter() {
  const [count, setCount] = useState(0);
  function incrementCount() {
    setCount(count + 1);
  }
  return (
    <div>
      <h1>Count: {count}</h1>
      <button onClick={incrementCount}>Click me!</button>
    </div>
  );
}

export default Counter;
```
If we give this a try in the running app, we should find the count variable's value to keep incrementing by one every time the button is clicked.
After we've got our heads around the code needed to define state, accessing and setting state is fairly simple and elegant.
 
