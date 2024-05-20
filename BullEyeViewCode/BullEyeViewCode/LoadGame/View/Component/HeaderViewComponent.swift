//
//  Header.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class HeaderViewComponent: UIViewController {
    
    public lazy var textHelp: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public func setupHeader(_ numberRandom: Int) {
        view.addSubview(textHelp)
        
        textHelp.text = "Put the Bull's Eye as close as you can to: \(numberRandom)"
        textHelp.textAlignment = .center
        
        NSLayoutConstraint.activate([
            textHelp.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            textHelp.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textHelp.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
}
