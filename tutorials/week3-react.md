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

### useEffect():
Now let's have a look at how to invoke the code to execute at a certain point in the component's lifecycle.
Older versions of React consisted of different Lifecycle hooks that allowed a user to hook into various phases of component rendering such as componentDidMount, ComponentDidUpdate, etc. which have all been condensed into a single function called useEffect(). Let us observe how this hook behaves by printing out the count in browser console.

1. As always, we  will start by importing the function from the react library:
```ts
import {useEffect} from 'react';
```
 2. Next we will add the function to our existing counter component:
 ```ts
 useEffect( ()=> {
   console.log(`The current count is ${count}`);
 },[])
 ```
 Let's break down this code to understand what is happening:
 * We use React's useEffect function to hook into the component life cycle.
 * The function takes in an arrow function, which executes when the component is first rendered.
 * The function takes in a second parameter, which determines when our arrow function is called. This parameter is an array of values that, when changed, will cause the arrow function to be invoked. In our case, we pass in an empty array, so our arrow function will never be called after the first render.
 * If we now try the running app and open the console, we'll see Counter first rendering only appears once.

 3. Let's remove the second parameter into useEffect now:
 ```ts
 useEffect( ()=> {
   console.log(`The current count is ${count}`);
 });
 ```
 * Now we can see that the componenet will render everytime the value of count is changed.
 * Additionally we can also pass the variable in the array to observe only changes related to a particular value:
 ```ts
 useEffect( ()=> {
   console.log(`The current count is ${count}`);
 },[count]);
 ```

 4. Finally, our component counter will look like:
 ```ts
import {useState} from 'react';
import {useEffect} from 'react';

function Counter() {

  const [count, setCount] = useState(0);

  function incrementCount() {
    setCount(count + 1);
  }

  useEffect( ()=> {
    console.log(`The current count is ${count}`);
  });

  return (
    <div>
      <h1>Count: {count}</h1>
      <button onClick={incrementCount}>Click me!</button>
    </div>
  );
}

export default Counter;
 ```
