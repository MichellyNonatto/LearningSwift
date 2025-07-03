//
//  LoginViewController.swift
//  FormCompany
//
//  Created by Michelly Nonato on 10/05/24.
//

import Foundation
import UIKit

final class MainCoordinator: Coodinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    
    func start() {
        let viewModel = LoginViewModel(coordinator: self)
        let vc = LoginViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }

    func showEmployeeScreen() {
        var empregados: [EmployeeModel] = []
        let cassia = EmployeeModel(name: "Cassia Barbosa", cargo: "CEO", foto: "CB")
        let gabriel = EmployeeModel(name: "Gabriel Carvalho", cargo: "CFO", foto: "GC")
        let paula = EmployeeModel(name: "Paula Leite", cargo: "CMO", foto: "PL")

        empregados.append(cassia)
        empregados.append(gabriel)
        empregados.append(paula)

        let viewModel = EmployeeViewModel(coordinator: self, model: empregados)

       let vc = EmployeeViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
