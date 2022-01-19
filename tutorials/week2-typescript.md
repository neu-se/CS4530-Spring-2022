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
*   [Basic Types](#basic-types)
*   [Variables](#variables)
    *   [Objects and Arrays](#objects-and-arrays)
*   [Control Flow Statements](#control-flow-statements)
    *   [Equality vs Strict Equality](#equality-vs-strict-equality)
*   [Loops](#loops)
*   [Functions](#functions)
    *   [Functions as Constructors](#functions-as-constructors)
    *   [Arrow Functions](#arrow-functions)
*   [Classes](#classes)
*   [Interfaces](#interfaces)
*   [Custom types](#custom-types)
*   [Generics](#generics)
*   [Modules](#modules)
*   [General Guidelines](#general-guidelines)

Typescript is a superset of JavaScript. Thus, all JavaScript code is valid Typescript code. Typescript introduces concepts of optional typing, modules, and few additional features to Javascript. Let us begin by extending JavaScript to use the features of Typescript and primitive types.

## Basic Types

Typescript comes with various built-in types. They are as follows:

*   number
*   string
*   boolean
*   Array
*   object
*   any
*   unknown
*   void
*   never

The usage of each type will be demonstrated in further sections.

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

## Objects and Arrays

*   Objects are similar to dictionaries with key-value pairs.
*   Arrays are iterable Objects with the keys as numbers.

Examples:

```ts
const myObj: any = {
    key1: 'value1',
    key2: 'value2'
};

console.log(myObj.key1); // prints 'value1'

const myArr: Array<string> = ['a', 'b', 'c'];
console.log(myArr[0]); // prints 'a'

// Alternate type definition for Arrays
const myArr: string[] = ['a', 'b', 'c'];
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

**TODO** - make sure loop syntax matches our linting rules

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

Functions in Typescript are defined as below:
```ts
function functionName(argument1: <type>, defaultArgument: <type> = value, optionalArgument?: <type>): <return type> {
    // Function body
}
```
    

Examples:
```ts
// Function with 2 or 3 arguments which returns a number.
function myFunc(x: number, y: boolean = true, z?: string): number {
    console.log(x);
    console.log(y);
    console.log(z);
    return 1;
}

// Calling functions

let a = myFunc(1); // a = 1, x = 1, y = true, z = undefined.
let b = myFunc(2, false); // a = 1, x = 2, y = false, z = undefined.
let b = myFunc(2, false, 'some string'); // a = 1, x = 2, y = false, z = 'some string'.
```
    

Functions can also be immediately invoked as shown below:
```ts
function myFunc() { /* Do something */ }();
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
    

## Classes

Classes are blueprints for creating objects.

*   They can contain _properties_, _methods_, and a _constructor_.
*   All members of a class can have an access modifier: _public_, _protected_, _private_.
*   Members can also be _static_ (shared across all instances of the class) and _final_ (immutable).
*   Class properties may have _getters_ and _setters_.
*   Classes can extend other classes.
*   Classes can implement interfaces.

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

**TODO** update this to follow the style guideline
_Note_: These guidelines will not be used for grading assignments.

*   Naming conventions:
    *   use kebab-case for file names.
    *   Use camelCase for variable and function names.
    *   Use PascalCase for Class and constructor function names.
*   Prefer descriptive names over random letters.
*   Although typing is optional in typescript, it is not optional for this course.
*   Always use strict equality.
*   Use a linter. (Most stylistic issues can be resolved by it)
*   Use a prettifier. (If the linter doesn't do it already)
*   Have only 1 class per file. And keep all files smaller than 300 lines.