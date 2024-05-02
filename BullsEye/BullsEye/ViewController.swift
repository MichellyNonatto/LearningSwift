//
//  ViewController.swift
//  BullsEye
//
//  Created by Michelly Nonato on 30/04/24.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /// Cria um pop-up ao clicar no botão `Hit Me`
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
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

