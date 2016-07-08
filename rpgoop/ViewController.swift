//
//  ViewController.swift
//  rpgoop
//
//  Created by Mark Laukkanen on 08/07/16.
//  Copyright © 2016 Mark Laukkanen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!

    var player: Player!
    var enemy: Enemy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "MasterWarrior3000", hp: 110, attackPwr: 20)
        playerHpLbl.text = "\(player.hp) HP"
        
        generateRandomEnemy()
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = WildWizard(startingHp: 60, attackPwr: 15)
        }
    }

    @IBAction func onChestTapped(sender: UIButton) {
    }

    @IBAction func onAttackTapped(sender: UIButton) {
    }


}

