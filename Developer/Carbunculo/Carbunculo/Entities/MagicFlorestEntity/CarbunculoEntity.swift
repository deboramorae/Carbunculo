//
//  CarbunculoEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CarbunculoEntity: GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene){
        super.init()
        
        addComponentsToEntity(scene: scene)
        
    }

    func addComponentsToEntity(scene: GameScene){
        let carbunculo = CarbunculoNode()
        
        addComponent(CarbunculoNodeComponent(node: carbunculo, scene: scene))
        addComponent(CarbunculoPhysicsBodyComponent(node: carbunculo))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
