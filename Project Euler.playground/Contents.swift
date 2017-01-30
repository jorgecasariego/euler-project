//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Project Euler"

//Problem 2: Even Fibonacci numbers
var first = 1
var second = 2
var next = 0
let max = 4000000

var suma: IntMax = 2

for i in 1..<max{
    next = first + second
    first = second
    second = next
    
    if next > max {
        break
    }
    
    if next % 2 == 0 {
        suma = suma + next
    }
}

print("Problem 2: Sum of the even-valued is: \(suma)")

//Problem 3: Largest prime factor
var number = 600851475143
var mayorNumber = 0

for i: Int in 2..<number {
    if number % i == 0 {
        while(number % i == 0){
            number = number / i
        }
        
        if number == 1{
            break
        }
        
        mayorNumber = number
    }
}

print("Problem 3: Mayor number is \(mayorNumber)")

//Problem 4: Largest palindrome product

extension Int {
    var array: [Int] {
        return description.characters.map{Int(String($0)) ?? 0}
    }
}


var result = 0
var higherJ = 0
var higherK = 0

let start = NSDate();
for k in (100...999).reversed() {
    for j in (100...k).reversed() {
        
        if j < higherJ && k < higherK {
            break
        }
        
        let value = k * j
        if value > result {
            let arrayNumber = value.array
            let reverseNumber = arrayNumber.reversed()
            
            if(arrayNumber.elementsEqual(reverseNumber)){
                
                if value > result {
                    higherJ = j
                    higherK = k
                    result = value
                    break
                }
            }
        }
        
    }
}
let end = NSDate();
let timeInterval: Double = end.timeIntervalSince(start as Date);

print("The number is \(result)")
print("Time to evaluate problem: \(timeInterval) seconds");





