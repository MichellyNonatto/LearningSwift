//
//  Footer.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class FooterViewComponent: UIView {
    
    public lazy var buttonStart: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Start Over", for: .normal)
        view.tintColor = .white
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
        view.tintColor = .white
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
        textScore.text = "Score:\t\(score)"
        textRound.text = "Round:\t\(round)"
        
        buttonStart.backgroundColor = #colorLiteral(red: 0.6979125738, green: 0.3404893279, blue: 0.8699842095, alpha: 0.8)
        buttonStart.layer.cornerRadius = 10
        buttonStart.clipsToBounds = true
        
        buttonInfo.backgroundColor = #colorLiteral(red: 0.6979125738, green: 0.3404893279, blue: 0.8699842095, alpha: 0.8)
        buttonInfo.layer.cornerRadius = 10
        buttonInfo.clipsToBounds = true
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(contentStackViewBottom)
        
        contentStackViewBottom.addArrangedSubview(buttonStart)
        contentStackViewBottom.addArrangedSubview(textScore)
        contentStackViewBottom.addArrangedSubview(textRound)
        contentStackViewBottom.addArrangedSubview(buttonInfo)
        
        NSLayoutConstraint.activate([
            contentStackViewBottom.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentStackViewBottom.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentStackViewBottom.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            buttonStart.widthAnchor.constraint(equalToConstant: 100),
            buttonInfo.widthAnchor.constraint(equalToConstant: 50),
            
            textScore.widthAnchor.constraint(equalToConstant: 200),
            textRound.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
