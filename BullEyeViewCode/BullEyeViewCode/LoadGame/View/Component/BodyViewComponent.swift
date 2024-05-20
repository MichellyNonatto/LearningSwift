//
//  Body.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class BodyViewComponent: UIViewController {
    
    public lazy var sliderBar: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var buttonAction: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Hit Me!", for: .normal)
        return view
    }()
    
    public lazy var textMin: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var textMax: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var contentStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 50
        return view
    }()
    
    public func setupBody(minValue: Int, maxValue: Int, currentValue: Int, _ component: HeaderViewComponent) {
        view.addSubview(contentStackView)
        view.addSubview(buttonAction)
        
        textMin.text = String(minValue)
        textMax.text = String(maxValue)
        
        sliderBar.minimumValue = Float(minValue)
        sliderBar.maximumValue = Float(maxValue)
        sliderBar.value = Float(currentValue)
        
        contentStackView.addArrangedSubview(textMin)
        contentStackView.addArrangedSubview(sliderBar)
        contentStackView.addArrangedSubview(textMax)
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: component.textHelp.bottomAnchor, constant: 100),
            contentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            contentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            buttonAction.topAnchor.constraint(equalTo: contentStackView.bottomAnchor, constant: 30),
            buttonAction.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonAction.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}
