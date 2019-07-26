//
//  CutsceneEntity.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit
import AVKit

class CutsceneEntity: GKEntity {
    init(entityManager: EntityManager, scene: GameCutscene, nameFile: String) {
        super.init()
        
        let path = Bundle.main.path(forResource: nameFile, ofType: "mp4")
        
        let player = AVPlayer(url: URL(fileURLWithPath: path!))
        player.actionAtItemEnd = .none
        
        
        
        
        let cutsceneNode = CutsceneNode(player: player)
        cutsceneNode.name = "cutsceneNode"
        cutsceneNode.position = CGPoint(x: 0, y: 0)
        cutsceneNode.size = CGSize(width: scene.frame.size.width, height: scene.frame.size.height)
        cutsceneNode.zPosition = 100
        cutsceneNode.play()
        
        if nameFile == "cutsceneInicio"{
            
            let buttonSkip = ButtonSkipNode(texture: SKTexture(imageNamed: "pular")){
                
                guard let durationTime = player.currentItem?.duration else { return }
                
                
                let percentageTime = CMTimeMultiplyByFloat64(durationTime, multiplier: 100.2)
                
                guard percentageTime.isValid && percentageTime.isNumeric else { return }
                
                var targetTime = player.currentTime() + percentageTime
                targetTime = targetTime.convertScale(durationTime.timescale, method: .default)
                
                guard targetTime.isValid && targetTime.isNumeric else { return }
                
                if targetTime > durationTime {
                    targetTime = durationTime
                }
                
                player.seek(to: targetTime)
                entityManager.removeButtonSkip()
            }
            
            buttonSkip.position = CGPoint(x: 280, y: -150)
            buttonSkip.zPosition = 101
            
            addComponent(buttonSkipComponent(node: buttonSkip, scene: scene))
        }
        
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.test(notitication:)), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem)
        

        addComponent(CutsceneNodeComponent(node: cutsceneNode, scene: scene))
        
        
    }
    
    @objc func test(notitication: NSNotification) {
        gameViewController.loadGameSceneView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
