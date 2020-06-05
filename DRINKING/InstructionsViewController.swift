//
//  InstructionsViewController.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 05/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet weak var instructionsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        instructionsLabel.backgroundColor = UIColor(patternImage: UIImage(named: "TXT BOX")!)
        instructionsLabel.text = """
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        """
        
        
    }
    
    

}
