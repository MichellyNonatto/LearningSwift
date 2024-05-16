//
//  MainCoordinator.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//
//  Classe principal por iniciar o programa

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){ // Qual tela deve ser apresentada?
        self.navigationController = navigationController
    }
    
    @MainActor
    func start() {
        let viewModel = LoadGameViewModel(coordinator: self)
        let vc = LoadGameView(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
