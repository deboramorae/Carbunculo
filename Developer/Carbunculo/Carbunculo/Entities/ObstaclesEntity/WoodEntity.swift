//
//  WoodEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WoodEntity:GKEntity{
    init(entityManager: EntityManager, scene: GameScene, positionNode : CGPoint, texture: SKTexture, size: CGSize) {
        super.init()
        
        let node = WoodNode()
        node.texture  = texture
        node.size     = size
        node.position = positionNode
        
        addComponentsToEntitie(scene: scene, node: node, size: size)
    }
    
    func addComponentsToEntitie(scene: GameScene, node: SKNode,size: CGSize){
        
        node.physicsBody?.friction = 10
        node.name                  = "wood"
        addComponent(WoodNodeComponent(node: node, scene: scene))
        addComponent(WoodPhysicsBodyComponent(node: node, size: size ))
        addComponent(ObstacleComeBackComponent())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
