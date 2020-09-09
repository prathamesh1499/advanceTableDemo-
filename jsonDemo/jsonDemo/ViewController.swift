//
//  ViewController.swift
//  jsonDemo
//
//  Created by admin on 24/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBAction func loadJSON(_ sender: UIButton)
    {
     let url = URL(string: "https://cognitioworld.com/dev/demo.json")
        let dataTask = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let jsonData = data
            {
                do{
             let jsonResult = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as! [Any]
                    print(jsonResult)
                    
                    let arr = jsonResult[5] as! [String:Any]
                    let dept = arr["department"] as! [String:Any]
                    let hr = dept["hr"] as! [Any]
                    let emp = hr[1] as! [String:Any]
                    print(emp["name"]!)
                    
                }catch {
                    print(error.localizedDescription)
                }
            }
        }
        dataTask.resume()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }


}

