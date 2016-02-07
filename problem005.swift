// Problem 5
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

var x = 20

while !((x % 11 == 0) && (x % 12 == 0) && (x % 13 == 0)
    && (x % 14 == 0) && (x % 15 == 0) && (x % 16 == 0)
    && (x % 17 == 0) && (x % 18 == 0) && (x % 19 == 0))
{
    x = x + 20
}

print(x)