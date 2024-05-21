//
//  Header.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class HeaderViewComponent: UIView {
    
    public lazy var textHelp: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public func setupHeader(_ numberRandom: Int) {
        textHelp.text = "Put the Bull's Eye as close as you can to: \(numberRandom)"
        textHelp.textAlignment = .center
        textHelp.textColor = .red
        backgroundColor = .red
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textHelp)
        
        NSLayoutConstraint.activate([
            textHelp.topAnchor.constraint(equalTo: topAnchor),
            textHelp.leadingAnchor.constraint(equalTo: leadingAnchor),
            textHelp.trailingAnchor.constraint(equalTo: trailingAnchor),
            textHelp.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
