//
//  Choice.swift
//  RockPaperScissors
//
//  Created by Donny Davis on 9/23/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import UIKit

enum Choice: Int {
    case Rock
    case Paper
    case Scissors
    
    var image: UIImage {
        // Return the appropriate image based on the choice that is selected
        switch self {
        case .Rock:
            return #imageLiteral(resourceName: "rock")
        case .Paper:
            return #imageLiteral(resourceName: "paper")
        case .Scissors:
            return #imageLiteral(resourceName: "scissors")
        }
    }
    
    static func random() -> Choice {
        // Get a random choice to simulate the computers pick
        return choice
    }
    
    // Compare the choice that is selected with an opponents choice to determine 
    // who wins
    func compare(withOpponentsChoice opponentsChoice: Choice) -> Bool? {
        switch (self, opponentsChoice) {
        case (.Rock, .Paper):
            return false
        case (.Rock, .Scissors):
            return true
        case (.Paper, .Rock):
            return true
        case (.Paper, .Scissors):
            return false
        case (.Scissors, .Rock):
            return false
        case (.Scissors, .Paper):
            return true
        default:
            return nil
        }
    }
}
