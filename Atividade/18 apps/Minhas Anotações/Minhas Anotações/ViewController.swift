//
//  ViewController.swift
//  Minhas Anotações
//
//  Created by Michelly Nonato on 18/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notationText: UITextView!
    
    @IBAction func notationButton(_ sender: UIButton) {
        if let textSet = notationText.text {
            UserDefaults.standard.setValue(textSet, forKey: "anotationKey")
        }
        print("Seus dados foram salvos")
    }
    
    func recoveryData() -> String {
        if let recoveryText = UserDefaults.standard.object(forKey: "anotationKey") {
            return recoveryText as! String
        }
        return "Nenhuma nota salva"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notationText.text = recoveryData()
    }
    
    
    
}

