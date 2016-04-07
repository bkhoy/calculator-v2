//
//  main.swift
//  calculator-v2
//
//  Created by Brittney Hoy on 4/6/16.
//  Copyright © 2016 Brittney Hoy. All rights reserved.
//

import Foundation

print("Calculator!")

//basic math functions
let add: (Int, Int) -> Int = { $0 + $1}
let subtract: (Int, Int) -> Int = { $0 - $1}
let multiply: (Int, Int) -> Int = { $0 * $1}
let divide: (Int, Int) -> Int = { $0 / $1}

//test basic math functions
print("Using 4 different functions")
print("10 + 2 = \(add(10, 2))")
print("10 - 2 = \(subtract(10, 2))")
print("10 * 2 = \(multiply(10, 2))")
print("10 / 2 = \(divide(10, 2))")


//handles general math operation
typealias handleMathOp = (Int, Int) -> Int
func calculate (num1 : Int, num2: Int, op : handleMathOp) -> Int {
    return op(num1, num2)
}

//test general math function
print("Using generic math function!")
print("10 + 2 = \(calculate(10, num2: 2, op: add))")
print("10 - 2 = \(calculate(10, num2: 2, op: subtract))")
print("10 * 2 = \(calculate(10, num2: 2, op: multiply))")
print("10 / 2 = \(calculate(10, num2: 2, op: divide))")


//addition and average functions
func findSum(values: [Int]) -> Int {
    var total = 0
    for value in values {
        total += value
    }
    return total
}

func findAvg(values: [Int]) -> Int {
    return findSum(values) / values.count
}

//test addition and average array functions
let sampleArr = [1, 2, 3, 4, 5]
print("Add all of the values in the array: \(findSum(sampleArr))")
print("Find the average of the values in array: \(findAvg(sampleArr))")

//generic addition and average array function
typealias handleSumOrAdd = [Int] -> Int
func findSumOrAvg (arr : [Int], sumOrAdd: handleSumOrAdd) -> Int {
    return sumOrAdd(arr)
}
//test generic function
print("Finding sum using generic function: \(findSumOrAvg(sampleArr, sumOrAdd: findSum))")
print("Finding average using generic function: \(findSumOrAvg(sampleArr, sumOrAdd: findAvg))")

//dictionary
