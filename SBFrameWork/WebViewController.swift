//
//  WebViewController.swift
//  StoryBoardFrameWork
//
//  Created by Vmoksha on 08/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController ,WKNavigationDelegate  {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "https://www.google.co.in/")! as URL
        webView.load(URLRequest(url: url))
        
        // Do any additional setup after loading the view.
    }

    private func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
    }
    internal func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
    }
   
}
