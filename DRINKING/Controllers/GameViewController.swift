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
    var quotes: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assign the quotes for the selected game
        quotes = selectedGame.quotes

    }
    
    fileprivate func getRandomQuote() -> String {
        if quotes.count == 0 {
            // TODO: Decide whether finishing the game or repeat the same quotes
        }
        
        let randomIndex = Int.random(in: 0..<quotes.count)
        let quote = quotes[randomIndex]
        quotes.remove(at: randomIndex)
        return quote
    }

}
