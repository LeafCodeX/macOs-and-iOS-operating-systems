//
//  main.swift
//  Laboratory_2
//
//  Created by Marcin Bajkowski on 12/03/2024.
//

import Foundation

func separator() {
    for i in 1...63 {
        if i % 2 == 0 {
            print("-", terminator: "")
        } else {
            print("=", terminator: "")
        }
        if i == 63 {
            print()
        }
    }
}

//Functions (1 point)
separator()
print("Exercise-1.1-Functions!")

func minValue(x: Int, y: Int) -> Int {
    return x <= y ? x : y
}
print("(3, 5) Smaller is: \(minValue(x: 3, y: 5))")
print("(10, 7) Smaller is: \(minValue(x: 10, y: 7))")
print("(21, 15) Smaller is: \(minValue(x: 21, y: 15))")

print("Exercise-1.2-Functions!")
func lastDigit(_ x: Int) -> Int {
    return x%10
}
print("Last digit: \(lastDigit(0123456789))")

print("Exercise-1.3-Functions!")
func divides(_ a: Int, _ b: Int) -> Bool {
    if a%b == 0 {
        return true
    } else {
        return false
    }
}
print("Whether the number 7 is divided by 3? \(divides(7, 3))")
print("Whether the number 8 is divided by 4? \(divides(8, 4))")

func countDivisors(_ a: Int) -> Int {
    var divisorsCount = 0
    for b in 1...a {
        if divides(a, b) {
            divisorsCount += 1
        }
    }
    return divisorsCount
}
print("Divisors of 1: \(countDivisors(1))")
print("Divisors of 10: \(countDivisors(10))")
print("Divisors of 12: \(countDivisors(12))")

func isPrime(_ a: Int) -> Bool {
    if countDivisors(a) == 2 {
        return true
    }
    return false
}

print("Whether the number 3 is a prime number? \(isPrime(3))")
print("Whether the number 8 is a prime number? \(isPrime(8))")
print("Whether the number 13 is a prime number? \(isPrime(13))")

//Closures (2 point)
separator()
print("Exercise-1.1-Closures!")
func smartBart(_ n: Int, closure: () -> ()) -> () {
    for i in 1...n{
        closure()
    }
}
smartBart(3, closure:{print("I will pass this course with best mark, because Swift is great!")})

print("Exercise-1.2-Closures!")
let numbers = [10, 16, 18, 30, 38, 40, 44, 50]
let multiplesOfFour = numbers.filter{$0 % 4 == 0}
print(multiplesOfFour)

print("Exercise-1.3-Closures!")
print(numbers.reduce(0){max($0, $1)})

print("Exercise-1.4-Closures!")
var strings = ["Gdansk", "University", "of", "Technology"]
let text = strings.reduce(""){$0+$1+" "}
print(text)

print("Exercise-1.5-Closures!")
let numbers2 = [1, 2 ,3 ,4, 5, 6]
let oddNumbers = numbers2.filter { $0 % 2 != 0 }
let squareNumbers = oddNumbers.map { $0 * $0 }
let sumString = squareNumbers.map { String($0) }.joined(separator: " + ")
let sum = squareNumbers.reduce(0, +)
print(sumString + " -> \(sum)")

//Tuples (1 point)
separator()
print("Exercise-1.1-Tuples!")
func minmax (a: Int, b: Int) -> (Int, Int) {
    if a < b {
        return (a, b)
    }
    else {
        return (b, a)
    }
}
let tuple = minmax(a: 8, b: 7)
print(tuple.0)
print(tuple.1)

print("Exercise-1.2-Tuples!")
var stringsArray = ["gdansk", "university", "gdansk", "university", "university", "of",  "technology", "technology", "gdansk", "gdansk"]
var countedStrings: [(String, Int)] = []
for string in stringsArray {
    if let index = countedStrings.firstIndex(where: { $0.0 == string }) {
        countedStrings[index].1 += 1
    } else {
        countedStrings.append((string, 1))
    }
}
print("[", terminator: "")
for (index, countedString) in countedStrings.enumerated() {
    if index == countedStrings.count - 1 {
        print("(\"\(countedString.0)\", \(countedString.1))", terminator: "")
    } else {
        print("(\"\(countedString.0)\", \(countedString.1))", terminator: ", ")
    }
}
print("]")

//Enums (1 point)
separator()
print("Exercise-1.1-Enums!")
enum Day:Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7

    func displayEmoji() -> () {
        switch self {
            case .Monday:
                print("🤡")
            case .Tuesday:
                print("🙃")
            case .Wednesday:
                print("🙂")
            case .Thursday:
                print("😀")
            case .Friday:
                print("😄")
            case .Saturday:
                print("😎")
            case .Sunday:
                print("😴")
        }
    }
}
let day = Day.Wednesday
day.displayEmoji()
