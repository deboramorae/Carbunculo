//
//  PlatformEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class PlatformEntity: GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene, texture : SKTexture, position: CGPoint, size: CGSize) {
        super.init()
        
        let node = PlatformNode()
        
        node.texture  = texture
        node.position = position
        node.size     = size
        
        addComponent(PlatformNodeComponent(node: node, scene: scene))
        addComponent(PlatformPhysicsBodyComponent(node: node, size: size))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
