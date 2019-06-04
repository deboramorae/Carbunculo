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
    
    init(entityManager : EntityManager, scene: GameScene, position: CGPoint) {
        super.init()
        let frutinha = FrutinhaNode()
        frutinha.position = position

        addComponentsToEntity(scene: scene, node: frutinha)
    }
    
    func addComponentsToEntity(scene: GameScene, node: FrutinhaNode){
        addComponent(MaracujaPhysicsBodyComponent(node: node))
        addComponent(MaracujaNodeComponent(node: node, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
