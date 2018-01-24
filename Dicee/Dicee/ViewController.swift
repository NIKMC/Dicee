//
//  ViewController.swift
//  Dicee
//
//  Created by Иван Никитин on 08/01/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var updateDiceImagesIndex1: Int = 0
    var updateDiceImagesIndex2: Int = 0
    let pictureName = "dice"
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImages()
        }
    }
    
    func updateDiceImages(){
        updateDiceImagesIndex1 = Int(arc4random_uniform(6))
        updateDiceImagesIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: "\(pictureName)\(updateDiceImagesIndex1 + 1)")
        diceImageView2.image = UIImage(named: diceArray[updateDiceImagesIndex2])
    }
    
}

