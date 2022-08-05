//
//  AudioPlayer.swift
//  Restart
//
//  Created by Kingsley Sarkodie on 8/4/22.
//

import Foundation
import AVFoundation //framework for media (audio, video, etc) read on it.

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    //sound -> file name
    //type -> file extension
    if let path = Bundle.main.path(forResource: sound, ofType: type)  {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
