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
    
    init(entityManager: EntityManager) {
        super.init()
        let backgroundNode = BackgroundNode()
        addComponent(GKSKNodeComponent(node: backgroundNode))    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
