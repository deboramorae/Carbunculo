//
//  InvisibleCutsceneComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class InvisibleCutsceneEntity: GKEntity {
    init(entityManager: EntityManager) {
        super.init()
        
        let invisibleNode = CutsceneInvisibleNode()
        invisibleNode.name = "invisibleCutsceneNode"
    
        addComponent(GKSKNodeComponent(node: invisibleNode))
        addComponent(InvisibleCutsceneComponent(node: invisibleNode))
        addComponent(InvisibleCutscenePhysicsBodyComponent(node: invisibleNode))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
