//
//  firstViewController.swift
//  StoryBoardDemo
//
//  Created by admin on 16/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit

class firstViewController: UIViewController
{

    @IBOutlet weak var myText11: UILabel!
    @IBOutlet weak var myText: UITextField!
    @IBAction func pass(_ sender: UIButton)
    {
        if myText.text == "hello"
        {
            performSegue(withIdentifier: "mySegue", sender: sender)
        }else{
            myText.text = "Wrong Password"
            myText.backgroundColor = UIColor.red
        }
    }
    @IBAction func register(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segue5", sender: sender)
     
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "mySegue"
        {
        let destination = segue.destination as! secondViewController
        destination.catcher = myText.text!
       }
        else
        {
         let destination = segue.destination as! ViewController4
            destination.catcher = ""
            
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
