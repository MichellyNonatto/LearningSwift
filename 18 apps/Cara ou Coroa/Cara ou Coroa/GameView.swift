//
//  GameView.swift
//  Cara ou Coroa
//
//  Created by Michelly Nonato on 08/10/24.
//

import UIKit

class GameView: UIViewController {

    @IBOutlet weak var randomCoin: UIImageView!
    var resultRandom: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomCoin.image = resultRandom
    }

}
