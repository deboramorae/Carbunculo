//
//  FloorMysticEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorMysticEntity: GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene){
        super.init()
        
        addComponentsToEntity(scene: scene)
        
    }
    
    func addComponentsToEntity(scene: GameScene){
        let floor = FloorMysticNode(scene: scene)
        
        addComponent(FloorMysticNodeComponent(node: floor, scene: scene))
        addComponent(FloorMysticPhysicsBodyComponent(node: floor))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

