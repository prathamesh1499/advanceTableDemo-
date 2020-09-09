//
//  webViewController.swift
//  advanceTableDemo
//
//  Created by admin on 23/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit
import WebKit
var catcher = " "
class webViewController: UIViewController
{

    @IBOutlet weak var myWeb: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myWeb.load(URLRequest(url: URL(string: catcher)!))
    }
    
}
