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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        instructions.text = selectedGame.instructions
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
