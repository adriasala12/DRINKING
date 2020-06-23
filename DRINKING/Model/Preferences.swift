//
//  Preferences.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 23/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import Foundation

class Preferences {
    
    static var selectedColorName = "YellowColor" {
        didSet {
            UserDefaults.standard.set(selectedColorName, forKey: "selectedColorName")
        }
    }
    static var selectedAppName = "DRINKING" {
        didSet {
            UserDefaults.standard.set(selectedAppName, forKey: "selectedAppName")
        }
    }
    
    class func getStoredValues() {
        if let color = UserDefaults.standard.value(forKey: "selectedColorName") {
            Preferences.selectedColorName = color as! String
        }
        
        if let name = UserDefaults.standard.value(forKey: "selectedAppName") {
            Preferences.selectedAppName = name as! String
        }
    }
    
}
