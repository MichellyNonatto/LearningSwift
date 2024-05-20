//
//  Footer.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class FooterViewComponent: UIViewController {
    
    public lazy var buttonStart: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Start Over", for: .normal)
        return view
    }()
    
    public lazy var textScore: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var textRound: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var buttonInfo: UIButton = {
        let view = UIButton(type: .infoLight)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var contentStackViewBottom: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 50
        return view
    }()
    
    public func setupFooter(score: Int, round: Int) {
        view.addSubview(contentStackViewBottom)
        
        textScore.text = "Score:\t\(score)"
        textRound.text = "Round:\t\(round)"
        
        contentStackViewBottom.addArrangedSubview(buttonStart)
        contentStackViewBottom.addArrangedSubview(textScore)
        contentStackViewBottom.addArrangedSubview(textRound)
        contentStackViewBottom.addArrangedSubview(buttonInfo)
        
        NSLayoutConstraint.activate([
            contentStackViewBottom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            contentStackViewBottom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            contentStackViewBottom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            buttonStart.widthAnchor.constraint(equalToConstant: 100),
            buttonInfo.widthAnchor.constraint(equalToConstant: 50),
            
            textScore.widthAnchor.constraint(equalToConstant: 200),
            textRound.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
