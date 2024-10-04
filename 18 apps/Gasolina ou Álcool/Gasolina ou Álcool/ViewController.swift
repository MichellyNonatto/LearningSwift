//
//  ViewController.swift
//  Gasolina ou Álcool
//
//  Created by Michelly Nonato on 04/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alcoolInput: UITextField!
    @IBOutlet weak var gasolineInput: UITextField!
    @IBOutlet weak var resultText: UILabel!
    
    private var result: Set<String> = ["É melhor o álcool", "É melhor a gasolina"]
    
    
    @IBAction func calculationButton(_ sender: UIButton) {
        guard let alcoolText = alcoolInput.text, !alcoolText.isEmpty,
              let gasolineText = gasolineInput.text, !gasolineText.isEmpty
        else {
            resultText.text = "Informe os valores do álcool e gasolina"
            return
        }
        
        if let alcoolValue = Double(alcoolText), let gasolineValue = Double(gasolineText) {
            validateField(alcool: Int(alcoolValue), gasoline: Int(gasolineValue))
        } else {
            resultText.text = "Valores inválidos. Insira números válidos."
        }
    }
    
    private func validateField(alcool: Int, gasoline: Int) {
        let percentage = alcool / gasoline
        
        if Double(percentage) < 0.7 {
            resultText.text = "É melhor usar Álcool."
        } else {
            resultText.text = "É melhor usar Gasolina."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

