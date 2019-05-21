//
//  Player.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class Player: GKEntity {
    
    init(entityManager: EntityManager) {
        super.init()
        
        let player = PlayerNode()
        
        addComponent(GKSKNodeComponent(node: player))
        addComponent(JumpingComponent(player: player))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
