//
//  ViewController.swift
//  Xylophone
//
//  Created by Sriram Prasad on 19/10/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var soundPlayer: AVAudioPlayer!
 var musicArray = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func playSound(soundFile: String)
    {
        let url = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url!)
        }
        catch{
            error.localizedDescription
        }
        soundPlayer.play()
    }

    @IBAction func playButton(_ sender: UIButton) {
        var selectedItem = musicArray[sender.tag-1]
        playSound(soundFile: selectedItem)
    }
    
}

