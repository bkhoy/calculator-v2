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


//addition
func findSum(values: [Int]) -> Int {
    var total = 0
    for value in values {
        total += value
    }
    return total
}

//multiplication
func findProduct(values: [Int]) -> Int {
    if (values.isEmpty) {
        return 0
    }
    var total = 1
    for value in values {
        total *= value
    }
    return total
}

//count
func count(values: [Int]) -> Int {
    return values.count
}

//average
func findAvg(values: [Int]) -> Int {
    if (values.isEmpty) {
        return 0
    }
    return findSum(values) / count(values)
}

//test addition and average array functions
let sampleArr = [1, 2, 3, 4, 5]
print("Array addition: \(findSum(sampleArr))")
print("Array multiplication: \(findProduct(sampleArr))")
print("Array count: \(count(sampleArr))")
print("Array average: \(findAvg(sampleArr))")


//generic addition and average array function
typealias handleMoreMath = [Int] -> Int
func findMathResult (arr : [Int], math: handleMoreMath) -> Int {
    return math(arr)
}

//test generic function
print("Generic function array addition: \(findMathResult(sampleArr, math: findSum))")
print("Generic function array multiplication: \(findMathResult(sampleArr, math: findProduct))")
print("Generic function array count: \(findMathResult(sampleArr, math: count))")
print("Generic function array average: \(findMathResult(sampleArr, math: findAvg))")


//tuples
typealias point = (Int, Int)
func addTuples (pt1: point, pt2: point) -> point {
    return (pt1.0 + pt2.0, pt1.1 + pt2.1)
}

func subtractTuples (pt1: point, pt2: point) -> point {
    return (pt1.0 - pt2.0, pt1.1 - pt2.1)
}

//test tuples
print("(1, 4) + (2, 2) = \(addTuples((1, 4), pt2: (2, 2)))")
print("(1, 4) - (2, 2) = \(subtractTuples((1, 4), pt2: (2, 2)))")



//dictionaries
typealias pointDictionary = [String : Double]

func addPointDict(pt1: pointDictionary, pt2: pointDictionary) -> pointDictionary {
    var result = ["x": 0.0, "y": 0.0]
    for (key, _) in result {
        if pt1[key] == nil && pt2[key] == nil {
            return result
        } else if pt1[key] == nil && pt2[key] != nil {
            result[key] = pt2[key]!
        } else if pt2[key] == nil && pt1[key] == nil {
            result[key] = pt1[key]!
        } else {
            result[key] = pt1[key]! + pt2[key]!
        }
    }
    
    return result
}

func multiplyPointDict(pt1: pointDictionary, pt2: pointDictionary) -> pointDictionary {
    var result = ["x": 0.0, "y": 0.0]
    for (key, _) in result {
        if pt1[key] == nil && pt2[key] == nil {
            return result
        } else if pt1[key] == nil && pt2[key] != nil {
            result[key] = pt2[key]!
        } else if pt2[key] == nil && pt1[key] == nil {
            result[key] = pt1[key]!
        } else {
            result[key] = pt1[key]! * pt2[key]!
        }
    }
    
    return result
}

print ("Adding the dictionaires \(addPointDict(["x": 1, "y": 2], pt2: ["x": 2, "y": 4]))")
print ("Multiplying the dictionaries \(multiplyPointDict(["x": 1, "y": 2], pt2: ["x": 2, "y": 4]))")
print ("ERROR HANDLING Adding the dictionaires \(addPointDict(["x": 1], pt2: ["x": 2, "y": 4]))")
print ("ERROR HANDLING Multiplying the dictionaries \(multiplyPointDict(["y": 2], pt2: ["x": 2, "y": 4]))")
print ("ERROR HANDLING Multiplying the dictionaries \(multiplyPointDict(["x": 1], pt2: ["x": 2, "y": 4]))")





