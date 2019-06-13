//
//  MecanicsSwipeEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 11/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MecanicsSwipeEntity : GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene) {
        super.init()
        
        let mecanic = MecanicsSwipeNode()
        
        mecanic.run(Animations.macanicsSwipe.animationSwipe)
        addComponent(MecanicsSwipeComponent(node: mecanic, scene: scene))
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
