//
//  WebViewController.swift
//  StoryBoardFrameWork
//
//  Created by Vmoksha on 08/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit
import WebKit
import MBProgressHUD

class WebViewController: UIViewController ,WKNavigationDelegate  {

    @IBOutlet weak var webView: WKWebView!
    
    let hud  = MBProgressHUD()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        webView.navigationDelegate = self
        let url = NSURL(string: "https://www.google.co.in/")! as URL
        webView.load(URLRequest(url: url))
        
        // Do any additional setup after loading the view.
    }

    private func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
      MBProgressHUD.showAdded(to: self.view, animated: true)
    }
    internal func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
        MBProgressHUD.hideAllHUDs(for: self.view, animated: true)
    }
   
}
