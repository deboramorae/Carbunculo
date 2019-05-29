//
//  PlatformEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class PlatformEntity:GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene) {
        super.init()
        addComponentsToEntitie(scene: scene)
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
