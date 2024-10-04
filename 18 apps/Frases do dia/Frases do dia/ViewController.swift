//
//  ViewController.swift
//  Frases do dia
//
//  Created by Michelly Nonato on 03/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phraseText: UILabel!
    @IBAction func phraseButton(_ sender: UIButton) {
        var phraseArray: [String] = []
        phraseArray.append("Levanta, sacode a poeira, dá a volta por cima.")
        phraseArray.append("Respire fundo e fique atento às surpresas deliciosas que a vida preparou para você!")
        phraseArray.append("Nem todos os dias são bons, mas há algo bom em cada dia.")
        phraseArray.append("Respeite sua mente e trate seu corpo com carinho.")
        phraseArray.append("Um passo de cada vez. Até meio passo serve. Siga firme, não há motivo para ter pressa.")
        phraseArray.append("Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.")
        
        let phrasePosition = Int.random(in: 0..<phraseArray.count)
        phraseText.text = phraseArray[phrasePosition]
        print(phrasePosition)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

