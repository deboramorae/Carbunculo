//
//  WaterEntity.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WaterEntity:GKEntity{
    
    init(entityManager: EntityManager, cena:GameScene) {
        super.init()
        addComponentsToEntitie(cena: cena)
    }
    
    func addComponentsToEntitie(cena:GameScene){
        let node = WaterNode()
        addComponent(WaterNodeComponent(node: node, scene: cena))
        addComponent(WaterPhysicsBodyComponent(node: node))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
