//
//  ViewController.swift
//  FirstApp
//
//  Created by admin on 10/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var mytext: UITextField!
    @IBAction func mybutton(_ sender: UIButton)
    {
        if mytext.text != ""{
        mylabel.text = mytext.text
        }
        else
        {
            mylabel.text = "EMPTY"
        }
    }
    
    @IBOutlet weak var mytext1: UITextField!
    @IBOutlet weak var mytext2: UITextField!
    
    @IBAction func button1(_ sender: UIButton)
    {
        if (mytext1.text != "" && mytext2.text != ""){
            resultLabel.text = String( Int(mytext1.text!)! + Int( mytext2.text!)!)
    }
        else{
          resultLabel.text = " EMPTY "
            
        }
        
    }
    @IBAction func button2(_ sender: UIButton)
    {
        if (mytext1.text != "" && mytext2.text != ""){
            resultLabel.text = String( Int(mytext1.text!)! - Int( mytext2.text!)!)
        }
        else{
            resultLabel.text = " EMPTY "
            
        }
        
    }
    
    @IBAction func button3(_ sender: UIButton)
    {
        
        if (mytext1.text != "" && mytext2.text != ""){
            resultLabel.text = String( Int(mytext1.text!)! * Int( mytext2.text!)!)
        }
        else{
            resultLabel.text = " EMPTY "
            
        }
        
    }
    
    @IBAction func button4(_ sender: UIButton)
    {
        
        if (mytext1.text != "" && mytext2.text != ""){
            resultLabel.text = String( Int(mytext1.text!)! / Int( mytext2.text!)!)
        }
        else{
            resultLabel.text = " EMPTY "
            
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.lightGray
        mylabel.text="WELCOME TO SWIFT"
    }
    
}

