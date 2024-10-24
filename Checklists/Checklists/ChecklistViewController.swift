//
//  ViewController.swift
//  Checklists
//
//  Created by Michelly Nonato on 01/08/24.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table View Data Source
    
    override func tableView( // Override é utilizado para sobreescrever um função existente na classe
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 100
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem",
            for: indexPath)
        
        // Add the following code
        let label = cell.viewWithTag(1000) as! UILabel
        
        /*label.text = {
         switch indexPath.row {
         case 0:
         return "Walk the dog"
         case 1:
         return "Brush teeth"
         case 2:
         return "Learn iOS development"
         case 3:
         return "Bike practice"
         case 4:
         return "Eat ice cream"
         default:
         return nil
         }
         }()*/
        
        if indexPath.row % 5 == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row % 5 == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row % 5 == 2 {
            label.text = "Learn iOS development"
        } else if indexPath.row % 5 == 3 {
            label.text = "Soccer practice"
        } else if indexPath.row % 5 == 4 {
            label.text = "Eat ice cream"
        }
        
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

