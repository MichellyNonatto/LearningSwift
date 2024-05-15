//
//  Coordinator.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 13/05/24.
//

import Foundation
import UIKit


protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
