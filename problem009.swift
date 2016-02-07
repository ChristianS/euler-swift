// Problem 9
// There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

searchLoop: for a in 1...998 {
    for b in 1...998 {
        let c = (1000 - a) - b
        if a*a + b*b == c*c {
            print(a * b * c)
            break searchLoop
        }
    }
}