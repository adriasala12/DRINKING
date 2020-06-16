//
//  GameViewController.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 06/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var selectedGame: Games!
    var sentences: [String]!

    @IBOutlet weak var sentenceLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var gameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set title label to game name
        gameLabel.text = selectedGame.name
        
        // Assign the quotes for the selected game
        sentences = selectedGame.sentences
        
        // Get first quote
        sentenceLabel.text = getRandomSentence()

    }
    
    fileprivate func getRandomSentence() -> String {
        // If there are no more sentences
        if sentences.count == 0 {
            // Change button title
            nextButton.setTitle("MENÚ", for: .normal)
            // Return Game Over label
            return "GAME OVER"
        }
        
        // If there are quotes, return a random quote and remove it from the list
        let randomIndex = Int.random(in: 0..<sentences.count)
        let quote = sentences[randomIndex]
        sentences.remove(at: randomIndex)
        return quote
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        // If there are no sentences left, return to menu
        if nextButton.titleLabel?.text == "MENÚ" {
            self.navigationController?.popToRootViewController(animated: true)
        } else {
            // If there are sentences, return random sentence
            sentenceLabel.text = getRandomSentence()
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    // TODO: Add tap gesture recognizer to text box
    
}
