//
//  XYZViewController.swift
//  userlogin
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class XYZViewController: UIViewController {

    @IBOutlet weak var myid: UITextField!
    @IBOutlet weak var mypass: UITextField!
    @IBAction func save(_ sender: UIButton)
    {
        UserDefaults.standard.set(myid.text!, forKey: "Email-id" )
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "Email-id") != nil{
        myid.text = (UserDefaults.standard.object(forKey: "Email-id") as! String)
        }

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if ( myid.text == "prathameshjoshi@gmail.com" && mypass.text == "password")
        {
            let destination = segue.destination as! ABCViewController
            destination.abc =  myid.text!
        }
        else{
            
            let alert = UIAlertController.init(title: "ALERT", message: "INVALID PASSWORD", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: { _ in
                }))
            self.present(alert , animated: true, completion: nil)
           
        }
   
    
}
}
