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
        self.model = LoadGameModel(sliderValue: 50, points: 0, level: 0, score: 0)
        self.model.randomValue = numberRandom()
    }
    
    public func getValueStandard() -> (min: Int, max: Int, value: Int) {
        return (
            min: self.model.min,
            max: self.model.max,
            value: self.model.sliderValue
        )
    }
    
    public func getValueUpdated() -> (numberRandom: Int, score: Int, round: Int){
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
    
    private func calcPoints(sliderValue: Int){
        let difference = abs(sliderValue - self.model.randomValue!)
        let points = 100 - difference
        self.model.points = points
    }
    
    public func setSliderGame(slider: Int){
        self.model.sliderValue = slider
    }
    
    
    private func setNewRound(_ points: Int) {
        self.model.score += points
        self.model.level += 1
        self.model.randomValue = numberRandom()
    }
    
    public func popUp(_ viewController: UIViewController){
        self.calcPoints(sliderValue: self.model.sliderValue)
                
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
        
        self.setNewRound(self.model.points)
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
    
    public func startOver(){
        self.model.sliderValue = 50
        self.model.points = 0
        self.model.level = 0
        self.model.score = 0
        self.model.randomValue = numberRandom()
    }
    
    private func notifyDelegate() {
        let updatedValues = getValueUpdated()
        delegate?.didUpdateValues(values: updatedValues)
    }
    
    public func presentInfoGameScreen(){
        coordinator.showInfoGameScreen()
    }
}
