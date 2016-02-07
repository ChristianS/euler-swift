// Problem 6
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

var squaresSum = 0
var sum = 0

for i in 1...100 {
    squaresSum += i * i
    sum += i
}

let sumSquared = sum * sum

let difference = sumSquared - squaresSum

print(difference)