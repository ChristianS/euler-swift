// Problem 7
// What is the 10 001st prime number?

import Darwin // for math functions

func isPrime(number: Int) -> Bool {
    
    if number <= 1 {return false}
    
    if number <= 3 {return true}
    
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {return false}
    }
    
    return true
}

var number = 0
var primesFound = 0

while primesFound < 10001 {
    number++
    
    if isPrime(number) {
        primesFound++
    }
}

print(number)