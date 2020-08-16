//
//  ViewController.swift
//  BillsAudioApp
//
//  Created by Bill Skrzypczak on 8/16/20.
//  Copyright © 2020 Bill Skrzypczak. All rights reserved.
//

import UIKit

//MARK: - Import the audio library.
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - Instantiate the Audio Player
    var audioPlayer = AVAudioPlayer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Tell us where the sound file is
        let sound = Bundle.main.path(forResource: "ThatsAllFolks", ofType: "aiff")
        
        //MARK: - Handle any errors or issues
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }

    //MARK: - Setup the buttons to pause play and stop the sounds
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
    
    
}

