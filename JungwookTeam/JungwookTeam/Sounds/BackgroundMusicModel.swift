//
//  BackgroundMusicModel.swift
//  JungwookTeam
//
//  Created by Catherine Candice on 02/05/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.volume = 0.1
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
