//
//  Enemy.swift
//  rpgoop
//
//  Created by Mark Laukkanen on 08/07/16.
//  Copyright © 2016 Mark Laukkanen. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler", "Filthy Animal"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
    }
}