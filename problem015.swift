// Problem 15
// Lattice paths: How many such routes are there through a 20×20 grid?

// recursive approach. way too slow (around one hour)
// see https://en.wikipedia.org/wiki/Binomial_coefficient

//func binomialCoefficient(n: Int, _ k: Int) -> Int {  // for n,k: 1<=k<=n-1
//    if k == 0 || k == n { return 1 }
//    return binomialCoefficient(n - 1, k - 1) + binomialCoefficient(n - 1, k)
//}


// Calculating Pascal's triangle
// see https://github.com/hollance/swift-algorithm-club/tree/master/Combinatorics

func binomialCoefficient(n: Int, _ k: Int) -> Int {
    var pascalsTriangle = [[Int]](count: n + 1, repeatedValue:[Int](count: n + 1, repeatedValue:Int(0)));
    
    // fill edges with 1s
    for i in 0...n {
        pascalsTriangle[i][0] = 1
        pascalsTriangle[i][i] = 1
    }
    
    // calculate cells by adding the two numbers above
    if n > 0 {
        for i in 1...n {
            for j in 1..<i {
                pascalsTriangle[i][j] = pascalsTriangle[i - 1][j - 1] + pascalsTriangle[i - 1][j]
            }
        }
    }
    
    return pascalsTriangle[n][k]
}


let gridCount = 20

// see https://en.wikipedia.org/wiki/Lattice_path
let routes = binomialCoefficient(gridCount*2, gridCount)

print(routes)
