//
//  LoadGameViewModel.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//

import Foundation

protocol LoadGameViewModelDelegate: AnyObject {
    func reject()
}

final class LoadGameViewModel {
    
    private let coordinator: MainCoordinator
    private let model: LoadGameModel
    
    weak var delegate: LoadGameViewModelDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = LoadGameModel() 
    }
}
