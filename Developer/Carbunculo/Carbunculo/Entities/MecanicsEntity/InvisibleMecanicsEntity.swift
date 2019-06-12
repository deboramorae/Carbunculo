//
//  InvisibleMecanicsEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 12/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class InvisibleMecanicsEntity: GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene){
        super.init()
        
        let invisible = InvisibleMecanicNode(scene: scene)
        
        addComponent(InvisibleMecanicsNodeComponent(node: invisible, scene: scene))
        addComponent(InvisibleMecanicsPhysicsComponent(node: invisible))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
