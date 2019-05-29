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
    init(entityManager: EntityManager, scene: GameScene) {
        super.init()
        addComponentsToEntitie(scene: scene)
    }
    
    func addComponentsToEntitie(scene: GameScene){
        let node = WoodNode()
        node.physicsBody?.friction = 10
        node.name                  = "wood"
        addComponent(WoodNodeComponent(node: node, scene: scene))
        addComponent(WoodPhysicsBodyComponent(node: node))
        addComponent(ObstacleComeBackComponent())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
