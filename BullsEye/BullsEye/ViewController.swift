///
///  ViewController.swift
///  BullsEye
///
///  Created by Michelly Nonato on 30/04/24.
///

import UIKit


class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var targetPoints: UILabel!
    @IBOutlet var targetRound: UILabel!
    
    var currentValue: Int?
    var targetValue: Int?
    
    var roundValue = 1
    var scoreValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startNewRound() /// Atualiza gerando um novo número randomizado
        self.updateLabel() /// Mostra o valor randomizado
        self.updateScore(scoreValue) /// Atualiza a pontuação total do jogador
    }
    
    @IBAction func showAlert() { /// Cria um pop-up ao clicar no botão `Hit Me`
        let difference = abs(currentValue! - targetValue!) /// Função sempre deixa o número possitivo
        let points = 100 - difference
        self.updateScore(points)
        
        let message = "You scored \(points) points!"
        
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
        
        self.startNewRound()
        self.updateLabel()
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
    
    func startNewRound() {
        let numberRamdom = { () -> Int in
            return ((Int.random(in: 1...100) + Int.random(in: 1...100)) % 100) + 1
        }
        
        self.targetValue = numberRamdom()
        self.currentValue = lroundf(slider.value) /// Pega o valor mínimo definido no slider localizado na Main
        self.slider.value = Float(currentValue!)
        
        self.targetRound.text = String(self.roundValue) /// Atualiza a fase em que o jogador está
        self.roundValue += 1
    }
    
    func updateLabel() {
        self.targetLabel.text = String(targetValue!)
    }
    
    func updateScore(_ points: Int){
        self.scoreValue += points
        self.targetPoints.text = String(self.scoreValue)
    }
}
