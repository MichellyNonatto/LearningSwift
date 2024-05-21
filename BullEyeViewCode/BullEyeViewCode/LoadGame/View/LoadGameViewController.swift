//
//  LoadGameView.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//
// Este arquivo serve para escrever os elementos de tela: botão, texto, madal, etc...
/// `` IDEIA:``` A página principal do jogo fica aqui, com os elementos de botão, texto, slider bar, entre outros.
//

import UIKit

final class LoadGameView: UIViewController, LoadGameViewModelDelegate {
    // MARK: Class
    private let headerViewComponent = HeaderViewComponent()
    private let bodyViewComponent = BodyViewComponent()
    private let footerViewComponent = FooterViewComponent()
    private let viewModel: LoadGameViewModel
    
    init(viewModel: LoadGameViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    func didUpdateValues(values: (numberRandom: Int, score: Int, round: Int)) {
        let config = viewModel.getValueStandard()
        headerViewComponent.setupHeader(values.numberRandom)
        bodyViewComponent.setupBody(minValue: config.min, maxValue: config.max, value: config.value)
        footerViewComponent.setupFooter(score: values.score, round: values.round)
    }
    
    
    func reject() {
        print("Error")
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error in coder.")
    }
    
    // MARK: Constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel.delegate = self
        
        let configuration = viewModel.getValueStandard()
        let values = viewModel.getValueUpdated()
        
        
        view.addSubview(headerViewComponent)
        view.addSubview(bodyViewComponent)
        view.addSubview(footerViewComponent)
        
        headerViewComponent.setupHeader(values.numberRandom)
        headerViewComponent.translatesAutoresizingMaskIntoConstraints = false
        
        bodyViewComponent.setupBody(minValue: configuration.min, maxValue: configuration.max, value: configuration.value)
        bodyViewComponent.translatesAutoresizingMaskIntoConstraints = false
        
        footerViewComponent.setupFooter(score: values.score, round: values.round)
        footerViewComponent.translatesAutoresizingMaskIntoConstraints = false
        footerViewComponent.setContentHuggingPriority(.defaultLow, for: .vertical)
        footerViewComponent.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        
        
        NSLayoutConstraint.activate([
            headerViewComponent.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            headerViewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            headerViewComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            bodyViewComponent.topAnchor.constraint(equalTo: headerViewComponent.bottomAnchor, constant: 100),
            bodyViewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            bodyViewComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            footerViewComponent.topAnchor.constraint(equalTo: bodyViewComponent.bottomAnchor),
            footerViewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            footerViewComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            footerViewComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        
        
        bodyViewComponent.buttonAction.addTarget(self, action: #selector(popUpAction), for: .touchUpInside)
        bodyViewComponent.sliderBar.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        
        footerViewComponent.buttonStart.addTarget(self, action: #selector(startAction), for: .touchUpInside)
        
    }
    
    private func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    @objc private func popUpAction() {
        viewModel.popUp(self)
        let values = viewModel.getValueUpdated()
        didUpdateValues(values: (numberRandom: values.numberRandom, score: values.score, round: values.round))
    }
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        viewModel.setSliderGame(slider: sliderValue)
    }
    
    @objc private func startAction() {
        viewModel.startOver()
        let values = viewModel.getValueUpdated()
        didUpdateValues(values: (numberRandom: values.numberRandom, score: values.score, round: values.round))
    }
}
