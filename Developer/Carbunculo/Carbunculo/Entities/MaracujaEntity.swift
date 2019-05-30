//
//  MaracujaEntity.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MaracujaEntity:GKEntity{
    
    init(entityManager : EntityManager, scene: GameScene) {
        super.init()
        addComponentsToEntity(scene: scene)
    }
    
    func addComponentsToEntity(scene: GameScene){
        
        let frutinha = FrutinhaNode()
        
        addComponent(MaracujaPhysicsBodyComponent(node: frutinha))
        addComponent(MaracujaNodeComponent(node: frutinha, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
