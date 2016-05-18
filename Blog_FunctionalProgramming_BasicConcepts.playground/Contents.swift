//: Playground - noun: a place where people can play

import UIKit

// MARK: - Immutability

let foo = 1

// This will cause a compiler error
// foo = 2


// MARK: - Value Types

var box = CGRect.zero
var square = box.size

// square: width: 0, height: 0
// box.size: width: 0, height: 10

box.size.height = 10

// square: width: 0, height: 10
// box.size: width: 0, height: 10


// MARK: - Pure Functions

// Pure function
func pure_sum(a: Int, _ b: Int) -> Int {
    return a + b
}

// Impure function
func impure_sum(a: Int, _ b: Int) -> Int {
    print(a)
    print(b)
    return a + b
}


// MARK: - First-class functions

func sayHello() {
    print("Hi!")
}

let greeting = sayHello

greeting()


// MARK: - Higher-order Functions

func inside() -> Void {
    print("Yo!")
}

func outside(inner: () -> Void) {
    inner()
}
