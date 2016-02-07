// Problem 2
// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

var result = 0
var previous = 1
var current = 1

while current < 4000000 {
    if current % 2 == 0 {
        result += current
    }
    var next = previous + current
    previous = current
    current = next
}

print(result)