//
//  QuicksandEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 30/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class QuicksandEntity : GKEntity{
    init(entityManager : EntityManager, scene : GameScene){
        super.init()
        addComponentsToEntities(scene: scene)
        
    }
    
    func addComponentsToEntities(scene : GameScene){
        
        let quicksand = QuicksandNode()
        addComponent(WindNodeComponent(node: quicksand, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
