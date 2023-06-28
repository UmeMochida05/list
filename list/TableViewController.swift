//
//  TableViewController.swift
//  list
//
//  Created by 持田ゆうり on 2023/06/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var numbers: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        generateRandomNumbers()
    }
    
    func generateRandomNumbers() {
        for _ in 1...20 {
            let randomNumber = Int.random(in: 1...100)
            numbers.append(randomNumber)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let number = numbers[indexPath.row]
        cell.textLabel?.text = "\(number)"
        
        if number >= 50 {
            cell.textLabel?.textColor = .red
        } else {
            cell.textLabel?.textColor = .black
        }
        
        return cell
    }
}

