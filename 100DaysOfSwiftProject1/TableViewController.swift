//
//  TableViewController.swift
//  100DaysOfSwiftProject1
//
//  Created by HexaHack on 31.05.2020.
//  Copyright © 2020 HexaHack. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
  var picturesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl") {
                picturesArray.append(item)
                print(item)
            }
        }

    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return picturesArray.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = picturesArray[indexPath.row]
        
        return cell
    }
    

}
