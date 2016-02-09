// Problem 12
// What is the value of the first triangle number to have over five hundred divisors?

var n = 0
var triangle = 0
var divisorsCount = 0

while divisorsCount <= 500 {
    // calculate triangle number for next natural number
    n++
    triangle += n
    
    // find divisors of triangle number
    var divisors = Set<Int>()
    for i in 1...triangle {
        if divisors.contains(i) {
            // stop search as soon as an divisor was already found. there will be no more
            break
        }
        else if triangle % i == 0 {
            divisors.insert(i)
            divisors.insert(triangle / i)
        }
    }
//    print(triangle, ": ", divisors)
    
    divisorsCount = divisors.count
}

print(triangle)