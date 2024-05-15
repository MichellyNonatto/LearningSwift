//
//  LoadGameView.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//
// Este arquivo serve para escrever os elementos de tela: botão, texto, madal, etc...
/// `` IDEIA:``` A página principal do jogo fica aqui, com os elementos de botão, texto, slider bar, entre outros.
//

import Foundation
import UIKit

final class LoadGameView: UIViewController, LoadGameViewModelDelegate {
    func reject() {
        print("Error")
    }
    
    // MARK: Classes UIKit
    private lazy var textHelp: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var sliderBar: UISlider = {
        let view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var textMin: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var textMax: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var contentStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 50
        return view
    }()
    
    private lazy var buttonAction: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Hit me!", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        return view
    }()
    
    private lazy var contentStackViewBottom: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 50
        return view
    }()
    
    private lazy var buttonStart: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Start Over", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        return view
    }()
    
    private lazy var textScore: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var textRound: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var buttonInfo: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Info", for: .normal) // TODO modificar
        view.setTitleColor(.blue, for: .normal)
        return view
    }()
    
    private let viewModel: LoadGameViewModel
    
    init(viewModel: LoadGameViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("Erro ao inicializar. Atributo 'coder' não implementado.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel.delegate = self
        
        var randownNumber:Int?
        randownNumber = 100 // Chamar a função de randomização
        textHelp.text = "Put the Bull's Eye as close as you can to: \(randownNumber!)"
        textHelp.textAlignment = .center
        
        textMin.text = "1"
        textMax.text = "100"
        
        var score: Int?
        score = 999
        textScore.text = "Score:\t\(score!)"
        
        var round: Int?
        round = 999
        textRound.text = "Round:\t\(round!)"
        
        // MARK: Constructor
        view.addSubview(textHelp)
        view.addSubview(contentStackView)
        view.addSubview(buttonAction)
        view.addSubview(contentStackViewBottom)
        
        
        //        view.addSubview(self.sliderBar)
        //        view.addSubview(self.textMin)
        //        view.addSubview(self.textMax)
        
        textHelp.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        textHelp.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        textHelp.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        contentStackView.addArrangedSubview(textMin)
        contentStackView.addArrangedSubview(sliderBar)
        contentStackView.addArrangedSubview(textMax)
        contentStackView.topAnchor.constraint(equalTo: textHelp.bottomAnchor, constant: 90).isActive = true
        contentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        contentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        buttonAction.topAnchor.constraint(equalTo: contentStackView.bottomAnchor, constant: 30).isActive = true
        buttonAction.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        buttonAction.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        contentStackViewBottom.addArrangedSubview(buttonStart)
        contentStackViewBottom.addArrangedSubview(textScore)
        contentStackViewBottom.addArrangedSubview(textRound)
        contentStackViewBottom.addArrangedSubview(buttonInfo)
        contentStackViewBottom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        contentStackViewBottom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        contentStackViewBottom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        buttonStart.widthAnchor.constraint(equalToConstant: 100).isActive = true
        textScore.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textRound.widthAnchor.constraint(equalToConstant: 200).isActive = true
        buttonInfo.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        /*textMin.topAnchor.constraint(equalTo: textHelp.bottomAnchor, constant: 100).isActive = true
         textMin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
         
         sliderBar.topAnchor.constraint(equalTo: textHelp.bottomAnchor, constant: 100).isActive = true
         sliderBar.leadingAnchor.constraint(equalTo: textMin.trailingAnchor, constant: 50).isActive = true
         sliderBar.trailingAnchor.constraint(equalTo: textMax.leadingAnchor, constant: -50).isActive = true
         
         textMax.topAnchor.constraint(equalTo: textHelp.bottomAnchor, constant: 100).isActive = true
         textMax.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true*/
        
        
        
        
        //        message.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        //        message.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        //        message.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        //        message.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }
    
}
