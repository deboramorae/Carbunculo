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
    
    init(entityManager: EntityManager, cena:GameScene) {
        super.init()
        
        addComponentsToEntitie(cena: cena)
    }
    
    func addComponentsToEntitie(cena:GameScene){
        addComponent(CameraComponent(cena: cena))
        addComponent(PauseComponent(cena: cena))
        addComponent(FloorComponent(scene: cena))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
