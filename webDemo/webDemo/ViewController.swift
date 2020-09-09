//
//  ViewController.swift
//  webDemo
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController,WKNavigationDelegate
,UITextFieldDelegate
{

    @IBOutlet weak var myWeb: WKWebView!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBOutlet weak var myText: UITextField!
    
    @IBAction func go(_ sender: UIButton)
    {
        let input = "https://"+myText.text!
        loadWeb(url: URL(string: input))
    }
    
    @IBAction func next(_ sender: UIButton)
    {
        myWeb.goForward()
    }
    
    @IBAction func relaod(_ sender: UIButton)
    {
    myWeb.reload()
    }
    
    @IBAction func back(_ sender: UIButton)
    {
        myWeb.goBack()
    }
    
    @IBAction func close(_ sender: UIButton)
    {
       exit(0)
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let url=URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        myWeb.load(request)
        myWeb.navigationDelegate = self //like a this operator in java.
        myText.delegate = self
    }
    
    func loadWeb(url : URL?)
    {
        var request = URLRequest(url: URL(string: "https://www.google.com")!)
        if (url != nil)
        {
          request = URLRequest(url: url!)
       
        }
        myWeb.load(request)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
    {
     activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        activity.stopAnimating()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        //helps to use the enter key as go button
        let input = "https://"+myText.text!
        loadWeb(url: URL(string : input))
        return true
    }
    
}


