//
//  WildWizard.swift
//  rpgoop
//
//  Created by Mark Laukkanen on 08/07/16.
//  Copyright © 2016 Mark Laukkanen. All rights reserved.
//

import Foundation

class WildWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Banana Bread"]
    }
    
    override var type: String {
        return "Wild Wizard"
    }
}