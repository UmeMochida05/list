//
//  TableViewController.swift
//  list
//
//  Created by 持田ゆうり on 2023/06/23.
//

import UIKit

var textLabel: UILabel!

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomInt = Int.random(in: 1...100)
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let randomInt = Int.random(in: 1...100)
        
        // 数字が50以上の場合にセルを赤色で表示
        if randomInt >= 50 {
            cell.textLabel?.textColor = UIColor.red
        } else {
            cell.textLabel?.textColor = UIColor.black
        }
        
        cell.textLabel?.text = "Random Number: \(randomInt)"
        
        return cell
    }
    
}
