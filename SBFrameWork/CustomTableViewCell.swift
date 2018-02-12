//
//  CustomTableViewCell.swift
//  SBFrameWork
//
//  Created by Vmoksha on 09/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var aLabel: UILabel!
  
    @IBOutlet weak var ImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }

}
