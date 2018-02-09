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
        
        imgArr = ["tree.jpg","water.jpeg","home.jpg","sun.jpg","moon.jpeg","leaves.jpg"]
        
         aTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        cell.aLabel.text = imgArr[indexPath.row]
        let imgName = imgArr[indexPath.row]
        cell.aImgView.image = UIImage(named: imgName)
        
        return cell
        
    }

}
