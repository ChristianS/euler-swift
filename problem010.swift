// Problem 10
// Find the sum of all the primes below two million.

import Darwin // for math functions

func isPrime(number: Int) -> Bool {
    
    if number <= 1 {return false}
    
    if number <= 3 {return true}
    
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {return false}
    }
    
    return true
}

var sum = 0

for i in 1..<2000000 {
    if isPrime(i) {
        sum += i
    }
}

print(sum)
