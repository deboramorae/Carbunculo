//
//  BackgroundEntity.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class BackgroundEntity: GKEntity {
    
    init(entityManager: EntityManager, texture: SKTexture, position : CGPoint) {
        super.init()
        let backgroundNode = BackgroundNode()
        
        backgroundNode.texture = texture
        backgroundNode.position = position
        
        addComponent(GKSKNodeComponent(node: backgroundNode))    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
