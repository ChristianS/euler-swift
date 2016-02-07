// Problem 4
// Find the largest palindrome made from the product of two 3-digit numbers.

func isPalindrome(number: Int) -> Bool {
    let numString = String(number)
    let reverse = String(numString.characters.reverse())
    
    if numString == reverse {
        return true
    }
    
    return false
}

var result = 0

for a in 999.stride(through:100, by:-1) {
    innerLoop: for b in a.stride(through:100, by:-1) {
        let product = a * b
        if isPalindrome(product) {
            if product > result {
                result = product
            } else {
                break innerLoop
            }
        }
    }
}

print(result)