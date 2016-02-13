// Problem 14
// Longest Collatz sequence: Which starting number, under one million, produces the longest chain?

var startingNumber = 0
var mostIterations = 0

for start in 1..<1_000_000 {
    var iterations = 0
    var term = start
    while term != 1 {
        if term % 2 == 0 {
            term = term / 2
        } else {
            term = 3 * term + 1
        }
        iterations++
    }

    if iterations > mostIterations {
        mostIterations = iterations
        startingNumber = start
    }
}

print(startingNumber, "produces the longest Collatz sequence of numbers under one million with a chain length of", mostIterations)