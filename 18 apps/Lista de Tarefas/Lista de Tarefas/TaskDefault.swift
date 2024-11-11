//
//  taskDefault.swift
//  Lista de Tarefas
//
//  Created by Michelly Nonato on 23/10/24.
//

import Foundation
import UIKit

class TaskDefault {
    private let key = "valuesTask"
    private var tasksList: [String] = []
    
    public func setTask(task: String){
        tasksList = getTask()
        tasksList.append(task)
        UserDefaults.standard.setValue(tasksList, forKey: self.key)
    }
    
    public func getTask() -> [String]{
        let data = UserDefaults.standard.object(forKey: key)
        
        if data != nil {
            return data as! Array<String>
        } else {
            return []
        }
    }
    
    public func deleteTask(index: Int) {
        tasksList = getTask()
        tasksList.remove(at: index)
        UserDefaults.standard.setValue(tasksList, forKey: self.key)
    }
    
}
