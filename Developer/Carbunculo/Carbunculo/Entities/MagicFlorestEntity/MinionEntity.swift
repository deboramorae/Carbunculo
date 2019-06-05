//
//  MinionEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 05/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MinionEntity: GKEntity{
    init(entityManager: EntityManager, scene: GameScene){
        super.init()
        
        addComponentsToEntity(scene: scene)
        
    }
    func addComponentsToEntity(scene: GameScene){
        let minion = MinionNode()
        
        addComponent(MinionNodeComponent(node: minion, scene: scene))
        addComponent(MinionPhysicsBodyComponent(node: minion))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
