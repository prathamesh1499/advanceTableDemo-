//
//  ViewController.swift
//  stopWatch
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var sec:Int = 00
    var min:Int = 00
    var hours:Int = 00
    @IBOutlet weak var mystop: UILabel!
    var timer = Timer()
    var running = false
    @IBAction func startWatch(_ sender: UIButton)
    {
        if running
        {
            return
        }
        else
        {
            running = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:
            {
            (timer) in
            self.sec = self.sec + 1
                if(self.sec == 60)
                {
                    self.sec = 0
                    self.min = self.min + 1
                }
                if(self.min == 60)
                {
                    self.sec = 0
                    self.min = 0
                    self.hours = self.hours + 1
                }
                let timerValue:String = String(String(format : "%02d" , self.hours) + " : " + String(format : "%02d" ,self.min) + " : " + String(format : "%02d" ,self.sec));
                self.mystop.text = timerValue;
        })
        
     }
    }
    @IBAction func stopWatch(_ sender: UIButton)
    {
        if running
        {
            let timerValue:String = String(String(format : "%02d" ,self.hours) + " : " + String(format : "%02d" ,self.min) + " : " + String(format : "%02d" ,self.sec));
            self.mystop.text = timerValue
            timer.invalidate()
             running = false
        }

    }
    @IBAction func resetWatch(_ sender: UIButton)
    {
        if !running
        {
            sec = 0;
            hours = 0;
            min = 0;
            let timerValue:String = String(String(format : "%02d" ,self.hours) + " : " + String(format : "%02d" ,self.min) + " : " + String(format : "%02d" ,self.sec));
            self.mystop.text = timerValue
            running = false
        }
    }
    override func viewDidLoad()
    {
        let timerValue:String = String(String(format : "%02d" ,self.hours) + " : " + String(format : "%02d" ,self.min) + " : " + String(format : "%02d" ,self.sec));
        self.mystop.text = timerValue;
        super.viewDidLoad()
    }

}

