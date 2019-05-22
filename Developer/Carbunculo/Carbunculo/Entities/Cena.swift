//
//  Cena.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit



class EntidadeCena: GKEntity {
    
    var floor: FloorNode!
    
    init(entityManager: EntityManager, cena:GameScene) {
        super.init()
        
        floor = FloorNode(scene: cena)
        addComponentsToEntitie(cena: cena)
    }
    
    func addComponentsToEntitie(cena:GameScene){
        addComponent(GKSKNodeComponent(node: floor))
        addComponent(CameraComponent(cena: cena))
        addComponent(FloorComponent(scene: cena))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
