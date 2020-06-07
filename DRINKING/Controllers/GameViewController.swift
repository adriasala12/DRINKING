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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assign the quotes for the selected game
        sentences = selectedGame.sentences
        
        // Get first quote
        sentenceLabel.text = getRandomQuote()

    }
    
    fileprivate func getRandomQuote() -> String {
        if sentences.count == 0 {
            // TODO: Decide whether finishing the game or repeat the same quotes
        }
        
        let randomIndex = Int.random(in: 0..<sentences.count)
        let quote = sentences[randomIndex]
        sentences.remove(at: randomIndex)
        return quote
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        sentenceLabel.text = getRandomQuote()
    }
    
    // TODO: Add tap gesture recognizer to text box
    
}
