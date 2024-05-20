//
//  LoadGameViewModel.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//

import Foundation
import UIKit

protocol LoadGameViewModelDelegate: AnyObject {
    func reject()
    func didUpdateValues(values: (numberRandom: Int, score: Int, round: Int))
}

final class LoadGameViewModel {
    
    private let coordinator: MainCoordinator
    private var model: LoadGameModel
    
    weak var delegate: LoadGameViewModelDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = LoadGameModel(points: 0, level: 0, score: 0)
    }
    
    public func getValueStandard() -> (min: Int, max: Int, value: Int) {
        return (
            min: self.model.min,
            max: self.model.max,
            value: self.model.value
        )
    }
    
    public func getValueUpdated() -> (numberRandom: Int, score: Int, round: Int){
        self.model.randomValue = numberRandom()
        return (
            numberRandom: self.model.randomValue!,
            score: self.model.score,
            round: self.model.level
        )
    }
    
    private func numberRandom() -> (Int){
        self.model.randomValue = ((Int.random(in: self.model.min...self.model.max) + Int.random(in: self.model.min...self.model.max)) % self.model.max) + 1
        return self.model.randomValue!
    }
    
    public func setNumbersGame(slider: Int, random: Int){ // Atualiza com os valores escolhidos
        self.model.sliderValue = slider
        self.model.randomValue = random
        
        // Calcula a pontuação
        let difference = abs(slider - random)
        model.points = 100 - difference
        
        self.model.sliderValue = self.model.sliderValue
        self.model.randomValue = numberRandom()
    }
    
    public func popUp(_ viewController: UIViewController){
        let message = "You scored \(self.model.points) points!"
        
        let alert = UIAlertController(
            title: performaceGame(self.model.points),
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        alert.addAction(action)
        viewController.present(alert, animated: true, completion: nil)
        
        setNewRound(self.model.points)
    }
    
    private func setNewRound(_ points: Int) {
        self.model.score += points
        self.model.level += 1
    }
    
    private let performaceGame: (Any) -> String = { points in
        if let points = points as? Int {
            if points == 100 {
                return "Wow, fashionable!!"
            } else if points >= 90 {
                return "Damn, almost!"
            } else if points >= 70 {
                return "Try again, who knows..."
            } else if points >= 30 {
                return "Come on, you can be better"
            } else {
                return "Ok, is this serious?"
            }
        } else {
            return "Invalid points value"
        }
    }
    
    private func notifyDelegate() {
        let updatedValues = getValueUpdated()
        delegate?.didUpdateValues(values: updatedValues)
    }
}
