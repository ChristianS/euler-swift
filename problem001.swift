// Problem 1
// Find the sum of all the multiples of 3 or 5 below 1000.

var result = 0
for x in 0..<1000 {
    if x % 3 == 0 || x % 5 == 0 {
        result += x
    }
}

print(result)