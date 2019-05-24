//
//  ChoicesEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesEntity : GKEntity{
    init(entityManager : EntityManager , scene: GameScene){
        super.init()
        addComponentsToEntities(scene: scene)
    }
    
    
    func addComponentsToEntities(scene : GameScene){
        let node = ChoicesNode()
        
        addComponent(ChoicesNodeComponent(node: node, scene: scene))
        addComponent(ChoicesPhysicsBodyComponent(node: node))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
