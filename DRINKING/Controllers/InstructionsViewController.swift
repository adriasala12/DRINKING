//
//  InstructionsViewController.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 05/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var instructions: UILabel!

    var selectedGame: Games!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Show the instructions for the selected game
        instructions.text = selectedGame.instructions
        
        // Add back gesture recognizer
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func playButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toGame", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! GameViewController
        destinationVC.selectedGame = selectedGame
    }

}
