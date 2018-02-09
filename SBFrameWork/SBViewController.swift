//
//  SBViewController.swift
//  StoryBoardFrameWork
//
//  Created by Vmoksha on 05/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit

public class SBViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openWebPage(_ sender: Any) {
        
        performSegue(withIdentifier: "webSegue", sender: self)
    }
    
    public func testFunction(withLoaction:CGRect)
    {
        print("testing")
        let location = withLoaction
        print(location)
    }

    @IBAction func tableButtonAction(_ sender: Any) {
        
          performSegue(withIdentifier: "tableSegue", sender: self)
    }
    
    
        
    
}
