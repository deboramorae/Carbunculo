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
    
    init(entityManager: EntityManager, scene: GameScene, texture : SKTexture, position: CGPoint) {
        
        super.init()
        
        setUpTextuteAndPosition(texture: texture, position: position)
        addComponentsToEntitie(scene: scene)
    }
    
    func setUpTextuteAndPosition(texture: SKTexture, position: CGPoint){
        let node = PlatformNode()
        node.texture  = texture
        node.position = position
    }
    
    func addComponentsToEntitie(scene: GameScene){
        
        let node = PlatformNode()
        addComponent(PlatformNodeComponent(node: node, scene: scene))
        addComponent(PlatformPhysicsBodyComponent(node: node))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
