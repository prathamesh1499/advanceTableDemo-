//
//  ViewController.swift
//  imageDemo
//
//  Created by admin on 16/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    var i = 0
    var timer = Timer()
    var isTimerOn = false
    
    func changeImagesFun(){
        
        i = i+1
        if (i <= 6 ){
            myImage.image = UIImage(named: "img\(i)")
        }
        else{
            myImage.image = UIImage(named:"img1")
            i = 0
        }
        
        
    }
    
    
    @IBAction func changeImage(_ sender: UIButton)
    {
        if (isTimerOn){
            timer.invalidate()
            isTimerOn = false
            sender.setTitle("Change Images" , for: .normal)
        }else{
            
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.changeImagesFun()
            })
            isTimerOn = true
            sender.setTitle("Stop Changes" , for: .normal)

         }
        
    }
    
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer)
    {
        changeImagesFun()
     }
    @IBAction func longPressed(_ sender: UILongPressGestureRecognizer)
    {
      changeImagesFun()
    }
    @IBAction func pinch(_ sender: UIPinchGestureRecognizer)
    {
        sender.view!.transform = sender.view!.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
        
    }
    
    @IBAction func rotated(_ sender: UIRotationGestureRecognizer)
    {
        sender.view!.transform = sender.view!.transform.rotated(by:sender.rotation)
           sender.rotation = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

