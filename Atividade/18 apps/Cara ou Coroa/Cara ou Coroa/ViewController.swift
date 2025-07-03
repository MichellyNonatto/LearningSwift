//
//  ViewController.swift
//  Cara ou Coroa
//
//  Created by Michelly Nonato on 07/10/24.
//

import UIKit

class ViewController: UIViewController {

    private let images: [UIImage] = [
           UIImage(named: "moeda_cara")!,
           UIImage(named: "moeda_coroa")!
       ]
    
    private func randomCoin(_ images: [UIImage]) -> UIImage? {
        if let randomImage = images.randomElement() {
            return randomImage
        }
        return nil
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "responser":
            let view = segue.destination as! GameView
            view.resultRandom = randomCoin(self.images)
        default:
            print("Identifier não encontrado")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

