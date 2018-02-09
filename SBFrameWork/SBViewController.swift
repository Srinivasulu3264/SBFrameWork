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

    @IBAction func alertAction(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Welcome..!" , message: "BeerChip has Claimed" , preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK" , style:.default , handler:{ (action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        let cancelAction = UIAlertAction(title:"Cancel" , style:.destructive , handler:{(action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
}
