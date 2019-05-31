//
//  StoneEntity.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 30/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class StoneEntity: GKEntity {
    
    init(entityManager: EntityManager, scene: GameScene){
        super.init()
        
        addComponentsToEntities(scene: scene)
    }
    
    func addComponentsToEntities(scene : GameScene){
        let stone = StonesNode()
        addComponent(StonesNodeComponent(node: stone, scene: scene))
        addComponent(StonesPhysicsBodyComponent(node: stone))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
