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
