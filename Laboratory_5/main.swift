//
//  main.swift
//  Laboratory_5
//
//  Created by Marcin Bajkowski on 24/04/2024.
//

import Foundation

class Game {
    var wordToGuess: String
    var guessedLetters: [Character]
    var numberOfTries: Int
    var guessedCharacters: Set<Character> = []
    
    init(word: String, tries: Int) {
        self.wordToGuess = word
        self.guessedLetters = word.map { $0 == " " ? " " : "_" }
        self.numberOfTries = tries
    }
    
    func drawBoard() {
        for letter in guessedLetters {
            print(letter, terminator: " ")
        }
        print()
    }
    
    func guessLetter() {
        print(">> [INFO] Guess a letter: ", terminator: "")
        let userInput = readLine()
        if let letter = userInput?.lowercased().first {
            if guessedCharacters.contains(letter) {
                print(">> [INFO] You have already guessed/chosen this letter. Try a different one.")
                numberOfTries -= 1
                print(">> [INFO] \(numberOfTries) tries remaining.")
            } else {
                guessedCharacters.insert(letter)
                if wordToGuess.lowercased().contains(letter) {
                    for (index, wordLetter) in wordToGuess.lowercased().enumerated() {
                        if wordLetter == letter {
                            guessedLetters[index] = wordToGuess[wordToGuess.index(wordToGuess.startIndex, offsetBy: index)]
                        }
                    }
                } else {
                    numberOfTries -= 1
                    print(">> [INFO] Incorrect guess! \(numberOfTries) tries remaining.")
                }
            }
        }
    }

    func playGame() {
        while numberOfTries > 0 {
            drawBoard()
            guessLetter()
            if !guessedLetters.contains("_") {
                break
            }
        }
        
        drawBoard()
        
        if !guessedLetters.contains("_") {
            print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
            print(">> [INFO] Congratulations! You guessed the word: [\(wordToGuess)].")
            print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
        } else {
            print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
            print(">> [INFO] You lost! The word was: [\(wordToGuess)].")
            print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
        }
    }
}

enum Category: String, CaseIterable {
    case Country = "Country"
    case Movies = "Movies"
    case Books = "Books"
    
    var words: [String] {
        switch self {
        case .Country:
            return ["Poland", "Belgium", "Mongolia", "Jamaica", "Denmark",
                    "United States", "United Kingdom", " Switzerland", "Liechtenstein", "South Korea",
                    "United Arab Emirates", "Democratic Republic of the Congo", "Bosnia and Herzegovina", "Papua New Guinea", "North Macedonia"]
        case .Movies:
            return ["Avatar", "Frozen", "Titanic", "Psycho", "Grease",
                   "Black Panther", "Forrest Gump", "Star Wars", "Jurassic World", "Toy Story",
                   "Pirates of the Caribbean", "The Lord of the Rings", "The Silence of the Lambs", "The Chronicles of Narnia", "The Shawshank Redemption"]
        case .Books:
            return ["Dracula", "Matilda", "Lolita", "Dune", "Hamlet",
                  "Frankenstein", "Harry Potter", "The Alchemist", "The Hobbit", "Rebecca",
                  "Pride and Prejudice", "The Count of Monte Cristo", "Crime and Punishment", "The Picture of Dorian Gray", "One Hundred Years of Solitude"]
        }
    }
}

enum Difficulty: Int, CaseIterable {
    case Easy = 1
    case Medium = 2
    case Hard = 3
    
    var tries: Int {
        switch self {
        case .Easy:
            return 12
        case .Medium:
            return 10
        case .Hard:
            return 8
        }
    }
}

enum WordLength: Int, CaseIterable {
    case Easy = 1
    case Medium = 2
    case Hard = 3
    
    func filterWords(words: [String]) -> [String] {
        switch self {
        case .Easy:
            return words.filter { $0.count >= 5 && $0.count <= 8 }
        case .Medium:
            return words.filter { $0.count > 8 && $0.count <= 15 }
        case .Hard:
            return words.filter { $0.count > 15 }
        }
    }
}

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> [INFO] Welcome to the Guessing Game!")
print(">> [INFO] Select a category: [1. Country, 2. Movies, 3. Books]")
print(">> [INFO] Give number:", separator: " ")
let categoryNumber = Int(readLine() ?? "") ?? 1
let category = Category.allCases[categoryNumber - 1]
print(">> [INFO] Category selected: \(category.rawValue)")
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> [INFO] Select number of tries : [1. Easy {12}, 2. Medium {10}, 3. Hard {8}]")
print(">> [INFO] Give number:", separator: " ")
let levelNumber = Int(readLine() ?? "") ?? 1
let level = Difficulty.allCases[levelNumber - 1]
print(">> [INFO] Level selected: \(level)")
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(">> [INFO] Select length: [1. Easy {5-8}, 2. Medium {9-14 with space}, 3. Hard {15-... with spaces}]")
print(">> [INFO] Give number:", separator: " ")
let lengthNumber = Int(readLine() ?? "") ?? 1
let length = WordLength.allCases[lengthNumber - 1]
print(">> [INFO] Length selected: \(length)")
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

let tries = level.tries

let words = length.filterWords(words: category.words)

let word = words.randomElement() ?? "Wordle"

let game = Game(word: word, tries: tries)
game.playGame()
