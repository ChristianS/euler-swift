// Problem 3
// What is the largest prime factor of the number 600851475143?

import Darwin // for math functions

func isPrime(number: Int) -> Bool {
    
    if number <= 1 {return false}
    
    if number <= 3 {return true}
    
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {return false}
    }
    
    return true
}

searchLoop: for n in Int(sqrt(600851475143.0)).stride(through:2, by:-1) {
    if 600851475143 % n == 0 {
        if isPrime(n) {
            print(n)
            break searchLoop
        }
    }
}
