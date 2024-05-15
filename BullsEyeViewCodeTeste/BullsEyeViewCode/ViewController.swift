//
//  ViewController.swift
//  BullsEyeViewCode
//
//  Created by Michelly Nonato on 15/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    public var printMesage: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        printMesage.text = "Hello World!"
        view.addSubview(printMesage)
        //        printMesage.textAlignment = .center
        
        NSLayoutConstraint.activate([
            printMesage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            printMesage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}

