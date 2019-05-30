//
//  InvisibleChoiceEntity.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class InvisibleChoiceEntity: GKEntity {
    
    init(entityManager: EntityManager , scene: GameScene){
        super.init()
        addComponentsToEntities(scene: scene)
    }
    
    
    func addComponentsToEntities(scene : GameScene){
        let node = InvisibleChoiceNode()
        
        addComponent(InvisibleChoiceComponent(node: node, scene: scene))
        addComponent(InvisibleChoicePhysicsBodyComponent(node: node))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
