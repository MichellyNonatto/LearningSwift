//
//  ViewController.swift
//  BullsEye
//
//  Created by Michelly Nonato on 30/04/24.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    var currentValue: Int?
    var targetValue: Int?
    var round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stratNewRound() // Atualiza gerando um novo número randomizado
        
        self.updateLabel() // Mostra o valor selecionado
    }
    
    /// Cria um pop-up ao clicar no botão `Hit Me`
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue!)\nThe target value is: \(targetValue!)"
        let alert = UIAlertController(
            title: targetValue! == currentValue! ? "Correct!" : "Wrong",
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        alert.addAction(action)
        present(alert, animated: true)
        
        self.stratNewRound()
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
    
    func stratNewRound() {
        let numberRamdom = { () -> Int in
            return ((Int.random(in: 1...100) + Int.random(in: 1...100)) % 100) + 1
        }
        targetValue = numberRamdom()
        currentValue = lroundf(slider.value) // Pega o valor mínimo definido no slider localizado na Main
        slider.value = Float(currentValue!)
    }
    
    func updateLabel() {
        targetLabel.text = String(targetValue!)
    }
    
}

