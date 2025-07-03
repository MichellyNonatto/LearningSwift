//
//  LoginViewModel.swift
//  FormCompany
//
//  Created by Michelly Nonato on 13/05/24.
//

import Foundation

protocol LoginViewModelDelegate: AnyObject {
    func reject()
}

final class LoginViewModel {

    private let coordinator: MainCoordinator
    private var model: LoginModel

    weak var delegate: LoginViewModelDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = LoginModel(login: "", password: "")
    }

    public var password: String = ""
    public var login: String = ""

    public func presentEmployeesScreen() {
        if password == "admin" && login == "admin" {
            coordinator.showEmployeeScreen()
        } else {
            delegate?.reject()
        }
    }
}
