//
//  MusicPlayer.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 07/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import AVFoundation

class AVMusicPlayer {
    let name: String
    var player = AVAudioPlayer()
    
    init(name: String) {
        self.name = name
    }
    
    func prepareMusic(){
        let path = Bundle.main.path(forResource: name, ofType: "mp3")
        if path != nil {
            let url = URL(fileURLWithPath: path!)
            
            do{
                
                self.player = try AVAudioPlayer(contentsOf: url)
                self.player.prepareToPlay()
            }catch{
                //
            }
        }else{
            //
        }
    }
    
    func playSong(){
        self.player.play()
    }
    
    func stopSong(){
        self.player.stop()
    }
    
    func pauseSong(){
        self.player.pause()
    }
    
    func songIsPlaying() -> Bool {
        return self.player.isPlaying
    }
}

