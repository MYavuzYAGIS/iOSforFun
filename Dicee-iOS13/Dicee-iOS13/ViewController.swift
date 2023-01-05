//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by JubaSensei on 11/06/2022.
//  Copyright © 2022 JubaSensei LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func rollButtonView(_ sender: Any) {
        
        // RAndomized Dice numbers
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),
                        #imageLiteral(resourceName: "DiceTwo"),
                        #imageLiteral(resourceName: "DiceThree"),
                        #imageLiteral(resourceName: "DiceFour"),
                        #imageLiteral(resourceName: "DiceFive"),
                        #imageLiteral(resourceName: "DiceSix")]

        // diceImageView1.image = #imageLiteral(
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
      
        
        
    }
}
