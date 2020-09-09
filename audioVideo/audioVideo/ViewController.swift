//
//  ViewController.swift
//  audioVideo
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController
{
    var audioPlayer = AVAudioPlayer()

    
    
    @IBAction func play(_ sender: UIButton)
    {
        audioPlayer.play()
    }
    
    @IBAction func stop(_ sender: UIButton)
    {
        audioPlayer.stop()
    }
    
    @IBAction func slider(_ sender: UISlider)
    {
        audioPlayer.volume = sender.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Sustainability", ofType: "mp3")
       let urlPath = URL(fileURLWithPath: path!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: urlPath)
        }catch let error{
            print(error.localizedDescription)
        }
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let xyz = Bundle.main.path(forResource: "Apple", ofType: "mp4")
        /*
        let URLpath = URL(fileURLWithPath: xyz!)
        let destination = segue.destination as! AVPlayerViewController
        destination.player = AVPlayer(url: URLpath)
        */
        //Runtime oplayer
        
        let playerVC = AVPlayerViewController()
        playerVC.player = AVPlayer(url: URL(fileURLWithPath:xyz!))
        self.addChild(playerVC)
        self.view.addSubview(playerVC.view)
        playerVC.view.frame = CGRect(x:68 , y:360, width: 242 , height: 242)
        
    }

}

