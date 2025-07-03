//
//  ViewController.swift
//  Gerador de Números
//
//  Created by Michelly Nonato on 02/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let min = 1
    private let max = 100


    @IBOutlet weak var ramdonText: UILabel!
    @IBAction func ramdonButton(_ sender: UIButton) {
        let randomNumber = ((Int.random(in: self.min...self.max) + Int.random(in: self.min...self.max)) % self.max) + 1
        self.ramdonText.text = String(randomNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

