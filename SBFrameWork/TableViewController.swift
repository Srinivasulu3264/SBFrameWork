//
//  TableViewController.swift
//  SBFrameWork
//
//  Created by Vmoksha on 09/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit

class TableViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var aTable: UITableView!
    
    var imgArr = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgArr = ["tree","water","home","sun","moon","leaves"]
        
         aTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        cell.aLabel.text = imgArr[indexPath.row]
    
        return cell
        
    }

}
