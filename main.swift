//
//  main.swift
//  homework1
//
//  Created by Kamila on 02.04.2023.
//

import Foundation

print("Hello, World!")

enum Game: String, CaseIterable {
    case rock
    case paper
    case scissors
 }

while true{
    let computer = Game.allCases.randomElement()
    print("Please enter the value (rock/paper/scissors): ")
    if let user = readLine(), let user = Game(rawValue: user) {
        let result: String
        switch(user, computer) {
        case let (u, c) where u == c:
            print("Draw!")
        case (.rock, .scissors), (.paper,.rock), (.scissors, .rock):
            print("You win!")
        default:
            print("You lose :(")
        }
    } else {
        print("Illegal input!")
    }
        
}
