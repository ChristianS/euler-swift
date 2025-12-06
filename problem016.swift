// Problem 16
// What is the sum of the digits of the number 2^1000?

// *** NOTES ***
// The main problem here is dealing with large numbers.
// 2**1000 requires 1001 bits in binary representation.
// Use a library for large numbers or an array.

// using an array to store digits (reversed); initialize with 2
var digits: [UInt8] = [2]

// using small integers for digit & carry over, because we are only multiplying by 2
var digit: UInt8
var carrying: UInt8 = 0

// multiply 999 times by 2, because we already start with a 2
for _ in 1..<1000 {
  // multiply each digit by 2
  for pos in 0..<digits.count {
    digit = digits[pos] * 2 + carrying
    carrying = digit / 10
    digits[pos] = digit % 10
  }

  // add digits "in front" when we are still carying something
  while carrying > 0 {
    digits.append(carrying % 10)
    carrying /= 10
  }
}

let sum: UInt = digits.reduce(0) { result, digit in
  result + UInt(digit)
}

// print("Number:", digits.reversed().map { String($0) }.joined())
print("Sum of digits:", sum)
