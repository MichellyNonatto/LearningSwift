//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Michelly Nonato on 02/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var yearsText: UITextField!
    
    @IBAction func calculateDogYears(_ sender: UIButton) {
        guard let inputText = yearsText.text,
              let humanYears = Int(inputText), humanYears > 0 else {
            resultLabel.text = "Insira uma idade válida."
            return
        }
        
        let dogYears = humanYears * 7
        resultLabel.text = "A idade do cachorro em anos humanos é: \(dogYears)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

