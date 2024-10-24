//
//  main.swift
//  Laboratory-1
//
//  Created by Marcin Bajkowski on 27/02/2024.
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

//  String and Text (1 point)
separator()
print("Exercise-1.1-String-and-Text!")
var firstNumber: Int = 5
var secondNumber: Int = 10
print("\(firstNumber) + \(secondNumber) = \(firstNumber + secondNumber)", terminator: "\n\n")

print("Exercise-1.2-String-and-Text!")
let firstString: String = "Gdansk University of Technology"
var secondString: String = firstString.replacingOccurrences(of: "n", with: "⭐️")
print(secondString, terminator: "\n\n")

print("Exercise-1.3-String-and-Text!")
let fullName: String = "Marcin Bajkowski"
let reversedFullName: String = String(fullName.reversed())
print ("\(fullName) -> \(reversedFullName)", terminator: "\n\n")

// Control Flow (1 point)
separator()
print("Exercise-2.1-Control-Flow!")
for _ in 1...11 {
    print("I will pass this course with best mark, because Swift is great!")
}

print("\nExercise-2.2-Control-Flow!")
let N: Int = 5
for i: Int in 1...N {
    if i < 5 {
        print(i*i, terminator: ", ")
    } else {
        print(i*i, terminator: "!\n")
    }
}

print("\nExercise-2.3-Control-Flow!")
let M: Int = 4
for _ in 1...M {
    for _ in 1...M {
        print("@", terminator: "")
    }
    print("", terminator: "\n")
}
print("", terminator: "\n")

// Arrays (1 point)
separator()
print("Exercise-3.1-Arrays!")
var numbers: [Int] = [5, 10, 20, 15, 80, 13]
if numbers.max() != nil {
    print((numbers.max()!), terminator: "\n\n")
}
print("Exercise-3.2-Arrays!")
let reversedNumbers = numbers.reversed()
for number in reversedNumbers {
    if number != reversedNumbers.last {
        print(number, terminator: ", ")
    } else {
        print(number, terminator: "!\n\n")
    }
}

print("Exercise-3.3-Arrays!")
var allNumbers: [Int] = [10, 20, 10, 11, 13, 20, 10, 30]
let uniqueNumbers: [Int] = Array(Set(allNumbers))
print("UniqueNumbers: \(uniqueNumbers)", terminator: "\n\n")

// Sets (1 point)
separator()
print("Exercise-4.1-Sets!")
var number: Int = 10
var divisors: Set<Int> = Set<Int>()
for i: Int in 1...number {
    if number % i == 0 {
        divisors.insert(i)
    }
}
print(divisors.sorted(), terminator: "\n\n")

// Dictionaries (1 point)
separator()
print("Exercise-5.1-Sets!")
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]
var flightNumbers = Array<String>()
for flight in flights {
    for data in flight {
        if data.key == "flightNumber" {
            flightNumbers.append(data.value)
        }
    }
}
print(flightNumbers, terminator: "\n\n")

print("Exercise-5.2-Dictionaries!")
var names = ["Hommer", "Lisa", "Bart"]
var fullNames: [[String: String]] = []

let lastName = "Simpson"

print("fullName = ", terminator: "")
for firstName in names {
    let personDict: [String: String] = ["lastName": lastName, "firstName": firstName]
    fullNames.append(personDict)
}

print(fullNames)
