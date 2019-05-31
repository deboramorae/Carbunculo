//
//  BalaoEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 31/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class BalaoEntity : GKEntity{
    init(entityManager : EntityManager, scene: GameScene) {
        super.init()
        addComponentsToEntity(scene: scene)
    }
    
    func addComponentsToEntity(scene: GameScene){
        
        let balao = BalaoExclamacaoNode()
        
        addComponent(BalaoExclamacaoNodeComponent(node: balao, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
