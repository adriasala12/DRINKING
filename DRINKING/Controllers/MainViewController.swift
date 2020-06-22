//
//  MainViewController.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 05/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - NAVIGATION
    
    @IBAction func settingsTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toSettings", sender: nil)
    }
    
    @IBAction func yoNuncaTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toInstructions", sender: Games.yoNunca)
    }
    
    @IBAction func back2backTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toInstructions", sender: Games.back2back)
    }
    
    @IBAction func prefieroTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toInstructions", sender: Games.prefiero)
    }
    
    @IBAction func quienEsMasProbableTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toInstructions", sender: Games.quienEsMasProbable)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInstructions" {
            let destinationVC = segue.destination as! InstructionsViewController
            destinationVC.selectedGame = (sender as! Games)
        }
    }
    
}

