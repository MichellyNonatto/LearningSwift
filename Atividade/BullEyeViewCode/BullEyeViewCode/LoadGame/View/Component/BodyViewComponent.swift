//
//  Body.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 20/05/24.
//

import UIKit

public class BodyViewComponent: UIView {
    
    public lazy var sliderBar: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var buttonAction: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Hit Me!", for: .normal)
        view.tintColor = .white
        return view
    }()
    
    public lazy var textMin: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        return view
    }()
    
    public lazy var textMax: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        return view
    }()
    
    public lazy var contentStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 50
        return view
    }()
    
    public func setupBody(minValue: Int, maxValue: Int, value: Int) {
        textMin.text = String(minValue)
        textMax.text = String(maxValue)
        
        sliderBar.minimumValue = Float(minValue)
        sliderBar.maximumValue = Float(maxValue)
        sliderBar.value = Float(value)
        sliderBar.tintColor = #colorLiteral(red: 0.983053267, green: 0.7389490008, blue: 0.947195828, alpha: 1)
        sliderBar.setThumbImage(UIImage(named: "indicador-flower 1"), for: .normal)
        
        buttonAction.backgroundColor = #colorLiteral(red: 0.6979125738, green: 0.3404893279, blue: 0.8699842095, alpha: 0.8)
        buttonAction.layer.cornerRadius = 10
        buttonAction.clipsToBounds = true
        
        contentStackView.addArrangedSubview(textMin)
        contentStackView.addArrangedSubview(sliderBar)
        contentStackView.addArrangedSubview(textMax)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(contentStackView)
        addSubview(buttonAction)
        
        sliderBar.value = 50
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: topAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            buttonAction.topAnchor.constraint(equalTo: contentStackView.bottomAnchor, constant: 30),
            buttonAction.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 300),
            buttonAction.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -300),
            buttonAction.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
