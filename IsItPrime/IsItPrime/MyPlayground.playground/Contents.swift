//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var number = 83789347
var isPrime = true

if number == 1 {
    isPrime = false
}

if number != 2 && number != 1 {
    for var i = 2; i < number; i++ {
        if number % i == 0 {
            isPrime = false
            // break
        }
    }
}

println(isPrime)

