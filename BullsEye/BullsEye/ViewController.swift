//
//  ViewController.swift
//  BullsEye
//
//  Created by Michelly Nonato on 30/04/24.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    var currentValue: Int?
    var targetValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value) // Pega o valor mínimo definido no slider localizado na Main
        targetValue = Int.random(in: 1...100)
    }
    
    /// Cria um pop-up ao clicar no botão `Hit Me`
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue!)\nThe target value is: \(targetValue!)"
        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    /// Retorna o valor selecionado da `slider`
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
    
    
    /// Cria um pop-up ao clicar no botão de informação
    @IBAction func infoAlert() {
        let alert = UIAlertController(
            title: "Informações",
            message: "Este jogo é para você adivinhar em qual número estou pensando.\nVamos lá, tente a sorte!",
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Voltar",
            style: .default
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
}

