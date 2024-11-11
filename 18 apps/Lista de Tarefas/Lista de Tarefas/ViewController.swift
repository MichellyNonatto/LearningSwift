//
//  ViewController.swift
//  Lista de Tarefas
//
//  Created by Michelly Nonato on 23/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taskInput: UITextField!
    
    @IBAction func taskButton(_ sender: UIButton) {
        if let text = taskInput.text {
            let task = TaskDefault()
            task.setTask(task: text)
            
            let dataCompilet = task.getTask()
            print(dataCompilet)
            taskInput.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
