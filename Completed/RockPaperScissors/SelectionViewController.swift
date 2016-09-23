//
//  SelectionViewController.swift
//  RockPaperScissors
//
//  Created by Donny Davis on 9/22/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    var selectedChoice: Choice?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func selectionTapped(_ sender: UIButton) {
        selectedChoice = Choice(rawValue: sender.tag)
        performSegue(withIdentifier: "ResultsSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            guard let resultsVC = segue.destination as? ResultsViewController else { return }
            
            resultsVC.selectedChoice = selectedChoice
            resultsVC.opponentsChoice = Choice.random()
        }
    }

}

