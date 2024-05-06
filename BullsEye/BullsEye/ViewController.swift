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
        
        /// Imagem para o controle deslizante
        
        let thumbImageNormal = UIImage(named: "indicador-flower")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }
    
    @IBAction func showAlert() { /// Cria um pop-up ao clicar no botão `Hit Me`
        let difference = abs(currentValue! - targetValue!) /// Função sempre deixa o número possitivo
        let points = 100 - difference
        
        let message = "You scored \(points) points!\n \(currentValue!)"
        
        let alert = UIAlertController(
            title: performaceGame(points),
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: { _ in
                self.updateScore(points)
                self.startNewRound()
                self.updateLabel()
            }
        )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    /// Retorna o valor selecionado da `slider`
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
    
    
    /// Inicia um novo round
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
    
    let performaceGame = {(_ points: Int) -> String in
        if points == 100 {
            return "Wow, fashionable!!"
        }else if points >= 90{
            return "Damn, almost!"
        }else if points < 90 && points >= 70 {
            return "Try again, who knows..."
        }else if points < 70 && points > 30 {
            return "Come on, you can be better"
        }else{
            return "Ok, is this serious?"
        }
    }
    
    @IBAction func startOver() {
        self.scoreValue = 0
        self.roundValue = 1
        self.updateLabel()
        self.updateScore(0)
        self.startNewRound()
    }
    
}
