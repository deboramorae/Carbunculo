//
//  AnimalEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class AnimalEntity: GKEntity{
    
    init(entityManager : EntityManager, scene: GameScene){
        super.init()
        addComponentsToEntity(scene: scene)
    }
    
    func addComponentsToEntity(scene: GameScene){
        let animal = AnimalNode()
        
        addComponent(AnimalNodeComponent(node: animal, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
