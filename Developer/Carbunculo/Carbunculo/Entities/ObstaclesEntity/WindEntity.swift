//
//  WindEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WindEntity : GKEntity{
    
    init(entityManager : EntityManager, scene : GameScene){
        super.init()
        addComponentsToEntities(scene: scene)
        
    }
    
    func addComponentsToEntities(scene : GameScene){
        let wind = WindNode()
        addComponent(WindNodeComponent(node: wind, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
