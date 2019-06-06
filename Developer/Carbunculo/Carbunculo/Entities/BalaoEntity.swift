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
    init(entityManager : EntityManager, scene: GameScene, position: CGPoint, name: String) {
        super.init()
        let balao = BalaoExclamacaoNode()
        balao.position = position
        balao.name = name
        
        
        balao.run(Animations.Animal.blink)
        addComponentsToEntity(scene: scene, balao: balao)
    }
    
    func addComponentsToEntity(scene: GameScene, balao : SKNode){
        
        addComponent(BalaoExclamacaoNodeComponent(node: balao, scene: scene))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
