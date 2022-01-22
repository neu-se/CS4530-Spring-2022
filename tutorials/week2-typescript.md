---
layout: page
title: Typescript Basics
permalink: /tutorials/week2-typescript-basics
parent: Tutorials
nav_order: 2
---

# Typescript Basics

This tutorial describes the basic concepts and syntax of typescript with code examples. Typescript is treated here as an extension to JavaScript, but it requires no prior knowledge to follow along.

Contents:

*   [Typescript Basics](#typescript-basics)
*   [Types in Typescript](#Types-in-typescript)
    *   [Any](#Any)
    *   [Unkown](#Unkown)
    *   [Boolean](#Boolean)
    *   [Number](#Number)
    *   [Bigint](#Bigint)
    *   [String](#String)
    *   [Arrays](#Arrays)
    *   [Tuples](#Tuples)
    *   [Enums](#Enums)
*   [Variables](#variables)
*   [Objects](#objects)
*   [Control Flow Statements](#control-flow-statements)
    *   [Equality vs Strict Equality](#equality-vs-strict-equality)
*   [Loops](#loops)
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
*   [General Guidelines](#general-guidelines)

Typescript is a superset of JavaScript. Thus, all JavaScript code is valid Typescript code. Typescript introduces concepts of optional typing, modules, and few additional features to Javascript. Let us begin by extending JavaScript to use the features of Typescript and primitive types.

## Types in typescript

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

If any is the Godfather, then unknown is Keanu Reeves as undercover FBI agent Johnny Utah in Point Break: laid back, fits right in with the bad guys, but deep down has a respect for the law and is on the side of the good guys. You can compare unknown values (with ==, ===, ||, &&, and ?), negate them (with !), and refine them (like you can any other type) with JavaScript’s typeof and instanceof operators.

Example:
```ts
let a: unknown = 30         // unknown
let b = a === 123           // boolean
``` 
*   _Usage_: 
For the few cases where you have a value whose type you really don’t know ahead of time, don’t use any, and instead reach for unknown. Like any, it represents any value, but TypeScript won’t let you use an unknown type until you refine it by checking what it is.

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

### Bigint

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
It lets you work with large integers without running into rounding errors. While the number type can only represent whole numbers up to 253, bigint can represent integers bigger than that too. 

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
**charAt()** : charAt() is a method that returns the character from the specified index. Characters in a string are indexed from left to right. The index of the first character is 0, and the index of the last character in a string, called stringName, is stringName.length – 1. 

Syntax: 
```ts
string.charAt(index);
```
**slice()** : This method extracts a section of a string and returns a new string. 
Syntax:
```ts 
string.slice( beginslice [, endSlice] );
```
**split()** : This method splits a String object into an array of strings by separating the string into substrings. 
Syntax: 
```ts 
string.split([separator][, limit]);
```
**concat()**: This method adds two or more strings and returns a new single string. 
Syntax: 
```ts 
string.concat(string2, string3[, ..., stringN]);
```
**indexOf()**: This method returns the index within the calling String object of the first occurrence of the specified value, starting the search at fromIndex or -1 if the value is not found. 
Syntax: 
```ts 
string.indexOf(searchValue[, fromIndex]);
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


## Variables

Variables can be declared in Typescript using one of 3 keywords:

*   _var_: var has scoping issues and should be avoided.
*   _let_: let should be used in all cases except where a variable is constant.
*   _const_: const should be used when there is no reassignment to the variable.

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
    

We recommend using strict equality (`===`) in all cases, and this recommendatiopn is enforced by our linter.

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
    

## Functions
*   Functions usually "take in" data, process it, and "return" a result. Remember one function/method one job!

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
    

## Arrow Functions

Arrow Functions (also called fat arrow functions) are functions which have lexical 'this' and 'arguments'. This are especially useful in class methods to preserve the context when using higher order functions.

Examples:
```ts
const myFunc = (x: number, y: boolean = true, z?: string): number => {
    console.log(x);
    console.log(y);
    console.log(z);
    return 1;
}

myFunc(1);
```
## Function Overloads

In TypeScript, we can specify a function that can be called in different ways by writing overload signatures. To do this, write some number of function signatures (usually two or more), followed by the body of the function:
```ts
function makeDate(timestamp: number): Date;
function makeDate(m: number, d: number, y: number): Date;
function makeDate(mOrTimestamp: number, d?: number, y?: number): Date {
  if (d !== undefined && y !== undefined) {
    return new Date(y, mOrTimestamp, d);
  } else {
    return new Date(mOrTimestamp);
  }
}
const d1 = makeDate(12345678);
const d2 = makeDate(5, 5, 5);
const d3 = makeDate(1, 3);
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
 
// Exactly the same as the earlier example
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
interface IPerson {
    firstName: string;
    lastName: string;
    getFullName(): string;
}

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

*   Export makes the variables and functions from a file visible outside it.
*   Import allows use to use variables and functions exported by another file.

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