---
layout: page
title: Typescript Basics
permalink: /tutorials/week2-typescript-basics
parent: Tutorials
nav_order: 2
---

# Typescript Basics

This tutorial describes the basic concepts and syntax of typescript with code examples. Typescript is treated here as an extension of JavaScript, but it requires no prior knowledge to follow along.

You can run the examples on [Online Typescript Editor](https://www.typescriptlang.org/play) . 

Contents:

*   [Types in Typescript](#types-in-typescript)
    *   [Boolean](#boolean)
    *   [Number](#number)
    *   [BigInt](#bigint)
    *   [String](#string)
    *   [Arrays](#arrays)
    *   [Tuples](#tuples)
    *   [Enums](#enums)
    *   [Any](#any)
    *   [Unknown](#unknown)
*   [Variable declaration in typescript](#variable-declaration-in-typescript)
*   [Objects](#objects)
*   [Control Flow Statements](#control-flow-statements)
    *   [Equality vs Strict Equality](#equality-vs-strict-equality)
*   [Loops](#loops)
*   [Array Functions](#array-functions)
    *   [ForEach](#foreach)
    *   [Map](#map)
    *   [Filter](#filter)
    *   [Reduce](#reduce)
*   [Functions](#functions)
    *   [Typing the function](#typing-the-function)
    *   [Invoking the function](#invoking-the-function)
    *   [Optional and Default Parameters](#optional-and-default-parameters)
    *   [Rest Parameters](#rest-parameters)
    *   [Functions as Constructors](#functions-as-constructors)
    *   [Arrow Functions](#arrow-functions)
    *   [Function Overloads](#function-overloads)
*   [Classes](#classes)
    *   [Creating a class](#creating-an-abstract-class)
    *   [Creating an abstract class](#creating-an-abstract-class)
*   [Type Aliases](#type-aliases)
*   [Interfaces](#interfaces)
*   [Custom types](#custom-types)
*   [Generics](#generics)
*   [Modules](#modules)
*   [Object oriented programming concepts using typescript](#object-oriented-programming-concepts-using-typescript)
    *   [Inheritance](#inheritance)
    *   [Polymorphism](#polymorphism)
    *   [Abstraction](#abstraction)
    *   [Encapsulation](#encapsulation)
*   [General Guidelines](#general-guidelines)

Typescript is a superset of JavaScript. Thus, all JavaScript code is valid Typescript code. Typescript introduces concepts of optional typing, modules, and few additional features to Javascript. Let us begin by extending JavaScript to use the features of Typescript and primitive types.

## Types in typescript

### Boolean

The boolean type has two values: true and false. 

Example:
```ts
let a = true                // boolean
     var b = false               // boolean
     const c = true              // true
     let d: boolean = true       // boolean
     let e: true = true          // true
```
*   _Usage_: 
You can compare them (with ==, ===, ||, &&, and ?), negate them (with !).

### Number

Number is the set of all numbers: integers, floats, positives, negatives, Infinity, NaN. 

Example: 
```ts
var b = Infinity * 0.10     // number
const c = 5678              // 5678
let d = a < b               // boolean
let e: number = 100         // number
let f: 26.218 = 26.218
```

*   _Usage_: 
Numbers can do things, like addition (+), subtraction (-), modulo (%), and comparison (<). When working with long numbers, use numeric separators to make those numbers easier to read. 

### BigInt

The bigint type is the set of all BigInts, and supports things like addition (+), subtraction (-), multiplication (*), division (/), and comparison (<). 

Example: 
```ts
let a = 1234n               // bigint
const b = 5678n             // 5678n
var c = a + b               // bigint
let d = a < 1235            // boolean
let e = 88.5n               // Error TS1353: A bigint literal must be an integer.
let f: bigint = 100n        // bigint
let g: 100n = 100n
```

*   _Usage_: 
It lets you work with large integers without running into rounding errors. While the number type can only represent whole numbers it can hold numbers larger than 2<sup>53</sup> – 1. 

### String

String is the set of all strings and the things you can do with them like concatenate (+), slice (.slice),etc. 

Example: 
```ts
let a: any = 666            // any
let b: any = ['danger']     // any
let c = a + b               // any
```

*   _Usage_: 
Any functionality that requires the functionality of a  string of characters. Here are a couple of string operations:

**charAt()** : This method returns the character from the specified index. Characters in a string are indexed from left to right. The index of the first character is 0, and the index of the last character in a string, called stringName, is stringName.length – 1. 

Syntax: 
```ts
string.charAt(index)
```
**slice()** : This method extracts a section of a string and returns a new string. 
Syntax:
```ts 
string.slice( beginslice [, endSlice])
```
**split()** : This method splits a String object into an array of strings by separating the string into substrings. 
Syntax: 
```ts 
string.split([separator][, limit])
```
**concat()**: This method adds two or more strings and returns a new single string. 
Syntax: 
```ts 
string.concat(string2, string3[, ..., stringN])
```
**indexOf()**: This method returns the index within the calling String object of the first occurrence of the specified value, starting the search at index or -1 if the value is not found. 
Syntax: 
```ts 
string.indexOf(searchValue[, fromIndex])
```
### Arrays

Like in JavaScript, TypeScript arrays are special kinds of objects that support things like concatenation, pushing, searching, and slicing. Arrays are iterable Objects with the keys as numbers.

Example:
```ts 
let a = [1, 2, 3]           // number[]
var b = ['a', 'b']          // string[]
let c: string[] = ['a']     // string[]
let d = [1, 'a']            // (string | number)[]
const e = [2, 'b']          // (string | number)[]
 
let f = ['red']
f.push('blue')
let g = []                  // any[]
g.push(1)                   // number[]
g.push('red')               // (string | number)[]
 
let h: number[] = []        // number[]
h.push(1)                   // number[]
```
### Tuples

Tuples are subtypes of array. They’re a special way to type arrays that have fixed lengths, where the values at each index have specific, known types. Unlike most other types, tuples have to be explicitly typed when you declare them. 

Example: 
```ts 
let a: [number] = [1]
 
// A tuple of [first name, last name, birth year]
let b: [string, string, number] = ['malcolm', 'gladwell', 1963]
 ```

*   _Usage_: 
In TypeScript Tuples support optional elements too. Just like in object types, ? means “optional”. Tuples also support rest elements, which you can use to type tuples with minimum lengths. Not only do tuple types safely encode heterogeneous lists, but they also capture the length of the list they type. 

### Enums 

Enums are a way to enumerate the possible values for a type. They are unordered data structures that map keys to values.

Example:
```ts 
enum Language {
 English,
 Spanish,
 Russian
}
```
*   _Usage_: 
There are two kinds of enums: enums that map from strings to strings, and enums that map from strings to numbers. Use it when you wish to provide flexibility making it easier to express and document intentions and use cases or when you want to save compile-time and runtime with inline code.

### Any

The any data type is the super type of all types in TypeScript. It denotes a dynamic type. Using the any type is equivalent to opting out of type checking for a variable.

Example:
```ts
let a: any = 666            // any
let b: any = ['danger']     // any
let c = a + b               // any
``` 
*   _Usage_: 
In TypeScript everything needs to have a type at compile time, and any is the default type when you (the programmer) and TypeScript (the typechecker) can’t figure out what type something is. It’s a last resort type, and you should avoid it when possible.


### Unknown

If any is the Godfather, then unknown is Keanu Reeves as undercover FBI agent Johnny Utah in Point Break: laid back, fits right in with the bad guys, but deep down has a respect for the law and is on the side of the good guys. You can compare unknown values (with ==, ===, &&, and ?), and refine them (like you can any other type) with JavaScript’s typeof and instanceof operators.

Example:
```ts
let a: unknown = 30         // unknown
let b = a === 123           // boolean
``` 
*   _Usage_: 
For the few cases where you have a value whose type you really don’t know ahead of time, don’t use any, and instead reach for unknown. Like any, it represents any value, but TypeScript won’t let you use an unknown type until you refine it by checking what it is.


## Variable declaration in typescript

Variables can be declared in Typescript using one of 3 keywords:

*   _var_:  var declarations are accessible anywhere within their containing function, module, namespace, or global scope - all which we’ll go over later on - regardless of the containing block. Some people call this var-scoping or function-scoping. Parameters are also function scoped.
*   _let_: When a variable is declared using let, it uses what some call lexical-scoping or block-scoping. Unlike variables declared with var whose scopes leak out to their containing function, block-scoped variables are not visible outside of their nearest containing block.
*   _const_: They are like let declarations but, as their name implies, their value cannot be changed once they are bound. In other words, they have the same scoping rules as let, but you can’t re-assign to them.

The syntax of declarations is as below:
```ts
var <name>: <type> = <value>;
let <name>: <type> = <value>;
const <name>: <type> = <value>;
``` 

Example:
```ts
let num: number = 1;
const PI: number = 3.14;
let x: string = "This is a string";
const t: boolean = true;
const f: boolean = false;
let uninitialized: any;
``` 

## Objects

*   Objects are similar to dictionaries with key-value pairs.
*   Arrays are iterable Objects with the keys as numbers.

Examples:

```ts
const myObj: any = {
    key1: 'value1',
    key2: 'value2'
};

console.log(myObj.key1); // prints 'value1'
```
    

## Control Flow Statements

Typescript contains the following control flow statements:

*   If-Else
*   Switch
*   Ternary operator: Shorthand for if-else which returns a value.

If condition syntax:

```ts
if(condition) {
    // executed when condition is true
}

if(condition) {
    // executed when condition is true
} else {
    // executed when condition is false
}

if(condition) {
    // executed when condition is true
} else if(condition2) { // checked only if condition is false
    // executed when condition2 is true
} else {
    // executed when all conditions in the if-elseif ladder are false.
}
```

Switch case syntax:
```ts
switch (variable) {

    case <case1>:
        // executed when value of variable matches <case1>
        break; // Break is required to prevent all subsequent cases from executing
    case <case2>:
        // executed when value of variable matches <case1>
        break; // Break is required to prevent all subsequent cases from executing
    default:
        // executed if variable does not match any prior cases
}
```

Ternary Syntax:

```ts
let x = (condition) ? /* Executed when condition is true */ : /*Executed when condition is false*/;
```    

Examples:
```ts
const str: string = "ABCD";

if(str === "ABCD") {
    console.log("it was true");
} else {
    console.log("it was false");
}

switch (str) {
    case "ABCD":
        console.log('It was ABCD');
        break;
    case "WXYZ":
        console.log('It was WXYZ');
        break;
    default:
        console.log('It was something completely different')
}

let y: string = (str.includes("A")) ? "The string contains A" : "The string does not contain A";
// y now contains "The string contains A"
```
    

## Equality vs Strict Equality

Typescript/JavaScript contain 2 equality operators:

*   `==`: Compares only the value of entities being compared.
*   `===`: Compares the type and value of entities being compared.

Example:
```ts
if(0 == '0') { } // Evaluates to true despite comparing string to number.

if(0 === '0') { } // Evaluated to false because types are different.
``` 
    

We recommend using strict equality (`===`) in all cases, and this recommendation is enforced by our linter.

## Loops

Typescript contains the following loops:

*   For
*   While
*   Do-while

Examples:
```ts
for(let i: number = 0; i < 10; i++) {

}

while(condition) {

}

do {

} while(condition)
``` 
## Array Functions

ForEach, Map, reduce, and filter are all array methods in JavaScript. Each one will iterate over an array and perform a transformation or computation. Each will return a new array based on the result of the function.

## ForEach

forEach() method calls a function for each element in the array. It returns the resultant array.

Syntax
```ts
array.forEach(callback[, thisObject]);
```

Example
```ts
let num = [7, 8, 9];
num.forEach(function (value) {
  console.log(value);
}); 
```
## Map

It is an array function that transforms the array according to the applied function and returns the updated array. It works on each element of an array.

Syntax
```ts  
array.map(callback[,object])
``` 
callback - It is a function that provides an element of the new Array from an element of the current one.

object - object to use as this when executing callback.
 
Return Type - List
 
Examples
```ts  
//Calculate cube of each element with the help of map. 
function cube(n){  
   return n*n*n;  
}  
var arr=new Array(1,2,3,4)  
var newArr=arr.map(cube);  
console.log(newArr)  // Output : [1,8,27,64]
```
In the above example, a function called “cube” is created and then is passed as a callback function into map().

## Reduce
It also works on a callback for each element of an array. It reduces the result of this callback function from one array element to the other.
 
Syntax
```ts 
array.reduce(callback[,initalValue])
``` 
callback - this parameter is the function to execute on each value in the array.

intitalValue - this parameter is the object to use as the first argument of the first call of the callback.
 
Examples
```ts 
//To calculate product of every element of an array,
var arr = new Array (1,2,3,4,5)    
var val = arr.reduce(function(a,b){    
   return a*b;    
});      
//output => 120  
```  
Calculate the total salary from a list of object, then you will use the reduce() like,

```ts
var employees = [    
   { id: 20, name: 'Ajay', salary:30000 },    
   { id: 24, name: 'Vijay', salary:35000 },    
   { id: 56, name: 'Rahul', salary:32000 },    
   { id: 88, name: 'Raman', salary:38000 }    
];    
var totalSalary= employees .reduce(function (total, record) {    
   return total + record.salary;    
}, 0);    
    
//It will return the total salary of all the employees.  
```

## Filter
As the name suggests it can filter out the data/array elements on the basis of condition and return the result as a list. Basically, this function pushes the current element into a new array when the callback functions return true.
 
Syntax
```ts  
array.map(callback[,object])
``` 
callback - it is a function that provides an element of the new Array from an element of the current one.
object - object to use as this when executing callback.
 
Return Type: List
 
Examples
```ts 
//Calculate a list of even elements from an array :    
arr = new Array(1, 2, 3, 6, 5, 4)  
var newArr = arr.filter(function(record) {  
    return record % 2 == 0;  
}); // output => [2,6,4] 
```

## Functions
*   Functions usually "take in" data, process it, and "return" a result. **Remember one function/method one job!**

*   There is a lot you can do with functions in JavaScript like assign them to variables, pass them to other functions, return them from functions, assign them to objects and prototypes, write properties to them, read those properties back, and so on, and TypeScript models all of those things with its rich type system, which we just learnt. 

*   Typescript enables us to set the types for our function parameters and our return type.

*   Functions in Typescript are defined as below:
```ts
function functionName(argument1: <type>, defaultArgument: <type> = value, optionalArgument?: <type>): <return type> {
    // Function body
}
```

## Typing the function

A simple function in javascript would look like this:
```ts
// Named function
function add(a, b) {
  return a + b;
}
```
Now, let’s add types to our simple examples above:

```ts
function add(a: number, b: number): number {
  return a + b;
}
```

You will usually explicitly annotate function parameters (a and b in this example)—TypeScript will always infer types throughout the body of your function, but in most cases it won’t infer types for your parameters. The return type is inferred, but it’s a good practice to explicitly annotate it.

## Invoking the function

When you invoke a function in TypeScript, you don’t need to provide any additional type information—just pass in some arguments, and TypeScript will go to work checking that your arguments are compatible with the types of your function’s parameters:

```ts
add(1, 2);         // evaluates to 3
```
Of course, if you forgot an argument, or passed an argument of the wrong type, TypeScript will be quick to point it out:

```ts 
add(1);            // Error TS2554: Expected 2 arguments, but got 1.
add(1, 'a');       // Error TS2345: Argument of type '"a"' is not assignable
                  // to parameter of type 'number'.
```

## Optional and Default Parameters

Like in object and tuple types, you can use ? to mark parameters as optional. When declaring your function’s parameters, required parameters have to come first, followed by optional parameters:
```ts
function log(message: string, userId?: string) {
  let time = new Date().toLocaleTimeString()
  console.log(time, message, userId || 'Not signed in')
}
 
log('Page loaded') // Logs "12:38:31 PM Page loaded Not signed in"
log('User signed in', 'da763be') // Logs "12:38:31 PM User signed in da763be"
```
You can provide default values for optional parameters. Semantically it’s similar to making a parameter optional, in that callers no longer have to pass it in (a difference is that default parameters don’t have to be at the end of your list of parameters, while optional parameters do).

For example, we can rewrite log as:
```ts
function log(message: string, userId = 'Not signed in') {
  let time = new Date().toISOString()
  console.log(time, message, userId)
}

log('User clicked on a button', 'da763be')
log('User signed out')
```

## Rest Parameters

If a function takes a list of arguments, you can of course simply pass the list in as an array:

```ts
function sum(numbers: number[]): number {
  return numbers.reduce((total, n) => total + n, 0);
}
 
sum([1, 2, 3]); // evaluates to 6
```

## Functions as Constructors

In Typescript/Javascript, Functions can be used as constructors for creating objects. This is similar to classes, but not quite the same.

Examples:
```ts
function Person(firstName: string, lastName: string): void {
    this.firstName = firstName;
    this.lastName = lastName;
    this.getFullName = function(): string {
        return this.firstName + ' ' + this.lastName;
    }
}
const person1 = new Person('first', 'last');
console.log(person1.getFullName()); // Returns 'first last'.
```
*   Constructors can’t have type parameters - these belong on the outer class declaration

*   Constructors can’t have return type annotations - the class instance type is always what’s returned
```ts
class Point {
  x: number;
  y: number;
 
  // Normal signature with defaults
  constructor(x = 0, y = 0) {
    this.x = x;
    this.y = y;
  }
}
```

## Arrow Functions

Arrow Functions (also called fat arrow functions) are functions which have lexical 'this' and 'arguments'. This are especially useful in class methods to preserve the context when using higher order functions.

Examples:
```ts
let sum = (x: number, y: number): number => {
    return x + y;
}

sum(10, 20); //returns 30
```
In the above example, sum is an arrow function. (x:number, y:number) denotes the parameter types, :number specifies the return type. The fat arrow => separates the function parameters and the function body. The right side of => can contain one or more code statements.

## Function Overloads

In TypeScript, we can specify a function that can be called in different ways by writing overload signatures. To do this, write some number of function signatures (usually two or more), followed by the body of the function:
```ts
//function makeDate() with one parameter
function makeDate(timestamp: number): Date;
//function makeDate() with three parameters 
function makeDate(m: number, d: number, y: number): Date;
//function makeDate() with one parameter and 2 default parameters
function makeDate(mOrTimestamp: number, d?: number, y?: number): Date {
  if (d !== undefined && y !== undefined) {
    return new Date(y, mOrTimestamp, d);
  } else {
    return new Date(mOrTimestamp);
  }
}
const d1 = makeDate(12345678);
const d2 = makeDate(5, 5, 5);
const d3 = makeDate(1, 3); //No overload expects 2 arguments, but overloads do exist that expect either 1 or 3 arguments.
```


## Classes

Classes are blueprints for creating objects.

*   They can contain _properties_, _methods_, and a _constructor_.
*   All members of a class can have an access modifier: _public_, _protected_, _private_.
*   Members can also be _static_ (shared across all instances of the class) and _final_ (immutable).
*   Class properties may have _getters_ and _setters_.
*   Classes can extend other classes.
*   Classes can implement interfaces.

### Creating a Class

A class definition can include the following:

*   _Fields_ − A field is any variable declared in a class. Fields represent data pertaining to objects
*   _Constructors_ − Responsible for allocating memory for the objects of the class
*   _Functions_ − Functions represent actions an object can take. They are also at times referred to as methods

Examples:
```ts
class Person {

    private firstName: string = '';
    protected middleName: string;
    public lastName: string = '';

    private static final NeverGonnaGiveYouUp: any;
    protected static final NeverGonnaLetYouDown: any;
    public static final isRickRolled: boolean = true;

    constructor() {
        // I execute when you call new Person().
        // No access modifier === public by default.
        // Make me private if implementing a singleton.
    }

    public anyoneCanCallMe(): void {
        this.childClassesCanCallMe();
    }

    protected childClassesCanCallMe(): void {
        this.onlyPersonCanCallMe();
    }
    
    private onlyAccessibleInsidePerson(): void {
        // I lied, anyone can call me if you know how.
        // Welcome to JavaScript :p
    }

    public get firstName(): string {
        return this.firstName;
    }

    public set firstName(firstName: string): void {
        this.firstName = firstName;
    }

}

const person = Person();
person.firstName = 'first';
console.log(person.firstName);
person.anyoneCanCallMe();

class SpecialPerson extends Person {
    // I contain everything person has, and can extend/override it.

    constructor() {
        super() // I call the constructor for Person.
    }

}
``` 
## Creating an abstract class

*   Define an abstract class in Typescript using the abstract keyword. Abstract classes are mainly for inheritance where other classes may derive from them. We cannot create an instance of an abstract class.

*   An abstract class typically includes one or more abstract methods or property declarations. The class which extends the abstract class must define all the abstract methods.
 

Example:
```ts
abstract class Person {
 abstract name: string;
 display(): void{
     console.log(this.name);
 }
}
class Employee extends Person {
 name: string;
 empCode: number;
  constructor(name: string, code: number) {
     super(); // must call super()
     this.empCode = code;
     this.name = name;
 }
}
let emp: Person = new Employee("James", 100);
emp.display(); //James
```
## Type Aliases

We’ve been using object types and union types by writing them directly in type annotations. This is convenient, but it’s common to want to use the same type more than once and refer to it by a single name.
A type alias is exactly that - a name for any type. The syntax for a type alias is:

```ts
type Point = {
  x: number;
  y: number;
};
 
function printCoord(pt: Point) {
  console.log("The coordinate's x value is " + pt.x);
  console.log("The coordinate's y value is " + pt.y);
}
 
printCoord({ x: 100, y: 100 });
```

You can actually use a type alias to give a name to any type at all, not just an object type. For example, a type alias can name a union type:
```ts
type ID = number | string;
``` 
Note that aliases are only aliases - you cannot use type aliases to create different/distinct “versions” of the same type. When you use the alias, it’s exactly as if you had written the aliased type. In other words, this code might look illegal, but is OK according to TypeScript because both types are aliases for the same type:

```ts
type UserInputSanitizedString = string;
 
function sanitizeInput(str: string): UserInputSanitizedString {
  return sanitize(str);
}
 
// Create a sanitized input
let userInput = sanitizeInput(getInput());
 
// Can still be re-assigned with a string though
userInput = "new input";
```

## Interfaces

Interfaces are used to define contracts for interaction with external entities. If an interface has a property/method, an Object/Class which implements it _must_ have it. Interfaces can be used to define custom types for Objects in Typescript.

Examples:
```ts
//Interface IPerson respresents a person by attributes firstName and lastName and a method to getFullName()
interface IPerson {
    firstName: string;
    lastName: string;
    getFullName(): string;
}

//Class Person implements interface Iperson. Person class must contains ll the attributes and methods of interface. 
class Person implements IPerson {

    public firstName: string = '';
    public lastName: string = '';

    public getFullName(): string {
        return this.firstName + ' ' + this.lastName;
    }

    // It can contain any other properties/methods but must contain those in the interface.

}

const person: IPerson = new Person();
```
    

## Custom types

*   For complicated types (usually required for Objects), it is recommended to use an interface.
*   Additionally, typescript contain the 'type' keyword which can be used to create new types.
*   This is generally used when a union of different types is required.

Examples:
```ts 
interface IStudent {
    name: string;
    age: number;
    studentID: number;
    gender: string;
    isEnrolled: boolean;
}

const student: IStudent = {
    name: 'name',
    age: 20,
    studentID: 111111111,
    gender: 'hidden'
    isEnrolled: true;
};

type StringOrNumber = string | number;

let x = 1;
x = 'some string';
``` 

## Generics

*   Generics allow us to pass different types to a function/class making it more generalized.
*   This will be especially useful when working with http requests.

Examples:

```ts    
function myFunc<T>(data: T): T {
    console.log(data);
    return data
}

let x: string = myFunc<string>('some string');
let y: number = myFunc<number>(5);

class myClass<T> {

}

interface IMyInterface<T> {

}
``` 
    

## Modules

A Module in typescript is defined by using the 'Import' or 'Export' keywords within a file. Variables declared in a module are scoped locally and are not added to the global scope.

*   **Export** makes the variables and functions from a file visible outside it.
*   **Import** allows use to use variables and functions exported by another file.

Examples:
```ts
// file1.ts

export const someVar: string = 'Variables can be exported too.';

export default function add(x: number, y: number): number {
    return x + y;
}

export function subtract(x: number, y: number): number {
    return x - y;
}

function multiply(): void {
    throw new Error();
}


// file2.ts
import add from './file1'; // curly braces are not required if export default is used.
// There can be only 1 export default in a while. Use it if file has only 1 export.
import { subtract } from './file1';

add(1, 2);
subtract(2, 1);

// multiply cannot be imported.
``` 
## Object oriented programming concepts using typescript  

Object Oriented Programming or OOP is a programming paradigm that has four principles which are:

*   Inheritance
*   Polymorphism
*   Abstraction
*   Encapsulation

## Inheritance

TypeScript supports the concept of Inheritance. Inheritance is the ability of a program to create new classes from an existing class. The class that is extended to create newer classes is called the parent class/super class. The newly created classes are called the child/sub classes.

A class inherits from another class using the ‘extends’ keyword. Child classes inherit all properties and methods except private members and constructors from the parent class. However, TypeScript doesn’t support multiple inheritance.

Syntax: 
```ts
class child_class_name extends parent_class_name
```

Example:
```ts
//Parent class Shape
class Shape {
 Area:number
  constructor(a:number) {
    this.Area = a
 }
}

//Child class Circle that inherits properties of Shape 
class Circle extends Shape {
 disp():void {
    console.log("Area of the circle:  "+this.Area)
 }
}
var obj = new Circle(223);
obj.disp()
```
## Polymorphism

When multiple classes inherit from a parent and override the same functionality, the result is polymorphism. Each of those child classes now implements a property or method, but they each may have their own way of performing that implementation. 

lternatively, one child class might override the parent’s members while another child doesn’t but just accepts the parent class’s implementation instead. This also demonstrates polymorphic behavior, since those behaviors are different between the siblings. 

```ts
class CheckingAccount {
  open(initialAmount: number) {
    // code to open account and save in database
  }
}

class BusinessCheckingAccount extends CheckingAccount {
  open(initialAmount: number) {
    if (initialAmount < 1000) {
      throw new Error("Business accounts must have an initial deposit of 1.000 Euros")
    }
    super.open(initialAmount);
  }
}

class PersonalCheckingAccount extends CheckingAccount {
  open(initialAmount: number) {
    if (initialAmount <= 0) {
      throw new Error("Personal accounts must have an initial deposit of more than zero Euros")
    }
    super.open(initialAmount);
  }
}
```

In the above code sample shows, the two child classes have different business rules to implement when it comes to opening an account – mainly different opening balances. Because both children have a method to open the account but both children choose to do it differently means the behavior is polymorphic.

To achieve polymorphism, inherit from a base class, then override methods and write implementation code in them. In addition to overriding methods, you can overload methods to achieve polymorphism.

Overloaded methods are methods that have different signatures (i.e., different data types or number of arguments) with the same name. However, in TypeScript, methods aren’t overloaded by simply modifying the types or number of arguments like in some other languages. 
 
To create an overload in TypeScript, you can either add optional arguments to a method, or overload function declarations in an interface and implement the interface.


## Abstraction

Abstraction is a way to model objects in a system that creates a separation of duties between class or type and the code that inherits it.

A developer creates a type, i.e., a class or interface, and that type specifies what the calling code should implement, but not how. So it’s the job of the abstract type to define what needs to be done, but up to the consuming types to actually do those things. To enforce abstraction, inherit or implement from abstract classes and interfaces.

For example, some bank accounts have fees. You can create a Fee interface that defines a method for charging a fee. Fees don’t apply to all types of accounts, so it’s best to create an interface that can be applied to specific classes anywhere in the inheritance hierarchy. A checking account might charge fees, where its parent and sibling, the generic bank account and savings accounts might not.

```ts
interface Fee {
  chargeFee(amount: number );
}

// parent BankAccount and sibling SavingsAccount do not implement Fee interface
class BankAccount { ... }

class SavingsAccount extends BankAccount { ... }

// checking implements Fee
class CheckingAccount extends BankAccount implements Fee {
  chargeFee(amount: number) {}
}
```

Children classes inherit interface members that have been implemented in their parent, so if a BusinessChecking account has inherited from the CheckingAccount class, then it inherits that implementation.

```ts
// BusinessChecking inherits CheckingAccount and therefore Fee
class BusinessChecking extends CheckingAccount { … }


// Code that uses BusinessChecking can call chargeFee
function CalculateMonthlyStatements() {
  let businessChecking = new BusinessChecking();
  businessChecking.chargeFee(100);
}
```
## Encapsulation

Encapsulation is a key part of Object Oriented Programming that is a way to structure code so that a certain block of code has specific access points for external code. The term for this is “visibility” or “accessibility”. Visibility defines what code from one method, property, or class can call code in another method, property, or class. 

In TypeScript, we enforce encapsulation with methods and properties that only allow access to data that we control. The Withdraw method below does that by doing the calculation and updating the class level _balance field. The Balance property then returns the private _balance field to the calling code.

```ts
Withdraw(amount: number): boolean
{
    if (this._balance > amount)
    {
        this._balance -= amount
        return true;
    }
    return false;
}
private _balance: number;
get Balance(): number {
    return this._balance;
}
```

## General Guidelines

*   Naming conventions 
    *   use kebab-case for file names.
    *   Use camelCase for variable and function names.
    *   Use PascalCase for Class and constructor function names.
*   Prefer descriptive names over random letters.
*   Although typing is optional in typescript, it is not optional for this course.
*   Always use strict equality.
*   Use a linter. (as specified on course website)
*   Use a prettifier. (If the linter doesn't do it already)
*   Use general coding guidelines as discussed in Week1.