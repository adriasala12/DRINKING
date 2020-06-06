//
//  InstructionsViewController.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 05/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet weak var instructions: UILabel!

    var selectedGame: Games!
    var quotes: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Show the instructions for the selected game
        instructions.text = selectedGame.instructions
        
        // Assign the quotes for the selected game
        quotes = selectedGame.quotes
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
