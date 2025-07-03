//
//  ViewController.swift
//  LearningTableUI
//
//  Created by Michelly Nonato on 24/05/24.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var myTable: UITableView!

    var youtubeChannels = ["Daniel Pinheiro", "Tiago Santineli", "Felca"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubeChannels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = youtubeChannels[indexPath.row]
        return cell
    }
}
