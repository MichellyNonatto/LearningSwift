//
//  InfoGameModel.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 21/05/24.
//

import UIKit

protocol InfoGameViewModelDelegate: AnyObject {
    func reloadUI()
}

final class InfoGameViewModel{
    
    private let coordinator: MainCoordinator
    private var model: InfoGameModel
    
    weak var delegate: InfoGameViewModelDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = InfoGameModel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
