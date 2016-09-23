//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Donny Davis on 9/23/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: IBOutlets
    
    
    // MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Unwrap the selected choices
        if let selectedChoice = selectedChoice, let opponentsChoice = opponentsChoice {
            // Compare the results
            
        }

    }
    
    @IBAction func playAgainTapped() {
        // Dismiss the view to play another game
    }

}
