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
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    @MainActor
    func start() {
        let viewModel = LoadGameViewModel(coordinator: self)
        let vc = LoadGameViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showInfoGameScreen(){
        let viewModel = InfoGameViewModel(coordinator: self)
        let vc = InfoGameViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
