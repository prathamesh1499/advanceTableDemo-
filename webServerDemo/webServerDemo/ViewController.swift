//
//  ViewController.swift
//  webServerDemo
//
//  Created by admin on 23/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBAction func loadHtml(_ sender: UIButton)
    {
        let url = URL(string: "https://stackoverflow.com")
        let dataTask = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if let urlContent = data
            {
                let webContent = NSString(data: urlContent, encoding: String.Encoding.utf8.rawValue)
                print(urlContent , webContent)
            }
        }
        dataTask.resume()
    }

    @IBAction func loadImage(_ sender: UIButton)
    {
        let url = URL(string: "https://images.performgroup.com/di/library/GOAL/b/aa/cristiano-ronaldo-juventus_j4n1kpwsoqj21bammxm13odyb.jpg?t=123025297&quality=60&w=1600")
        let dataTask = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if let rawImage = data
            {
               let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                let savePath = path[0] + "/myImg.jpg"
                FileManager.default.createFile(atPath: savePath, contents: rawImage, attributes: nil)
                print(savePath)
                DispatchQueue.main.async
                    {
                    self.myImage.image = UIImage(named: savePath)
                }
                
            }
        }
        dataTask.resume()
        
    }
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

}

