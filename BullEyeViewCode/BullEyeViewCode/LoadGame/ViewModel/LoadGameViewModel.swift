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
}

final class LoadGameViewModel {
    
    private let coordinator: MainCoordinator
    private let model: LoadGameModel
    
    private var sliderValue: Int?
    private var randomValue: Int?
    
    weak var delegate: LoadGameViewModelDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = LoadGameModel()
        self.sliderValue = nil
        self.randomValue = nil
    }
    
    public func setNumbersGame(slider: Int, random: Int){
        self.sliderValue = slider
        self.randomValue = random
    }
    
    public var numberRamdom = { () -> Int in // TODO após realizar a função de Round, deixar esse closure privado
        return  ((Int.random(in: 1...100) + Int.random(in: 1...100)) % 100) + 1
    }
    
    public func popUp(_ viewController: UIViewController){
        
        let points: () throws -> Int = {
            guard let sliderValue = self.sliderValue, let randomValue = self.randomValue else {
                throw CustomError.valueNotSet
            }
            
            let difference = abs(sliderValue - randomValue)
            let point = 100 - difference
            return point
        }
        
        enum CustomError: Error {
            case valueNotSet
        }
        
        let verificPoints: Any
        do{
            verificPoints = try points()
        } catch CustomError.valueNotSet{
            verificPoints = "Error: Value not set."
        } catch {
            verificPoints = "An unexpected error occurred."
        }
        
        let message = "You scored \(verificPoints) points!"
        
        let alert = UIAlertController(
            title: performaceGame(verificPoints),
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        alert.addAction(action)
        viewController.present(alert, animated: true, completion: nil)
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
}
