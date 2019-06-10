//
//  CutsceneEntity.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class CutsceneEntity: GKEntity {
    init(entityManager: EntityManager, scene: GameScene, nameFile: String) {
        super.init()
        
        let cutsceneNode = CutsceneNode(nameFile: nameFile)
        cutsceneNode.name = "cutsceneNode"
        cutsceneNode.position = CGPoint(x: 0, y: 0)
        cutsceneNode.size = CGSize(width: scene.frame.size.width, height: scene.frame.size.height)
        cutsceneNode.zPosition = 100


        addComponent(CutsceneNodeComponent(node: cutsceneNode, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
