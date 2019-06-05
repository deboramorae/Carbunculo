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
    init(entityManager : EntityManager, scene: GameScene, position: CGPoint) {
        super.init()
        addComponentsToEntity(scene: scene, position: position)
    }
    
    func addComponentsToEntity(scene: GameScene,position: CGPoint){
        
        let balao = BalaoExclamacaoNode()
        balao.position = position
        
        addComponent(BalaoExclamacaoNodeComponent(node: balao, scene: scene))
        balao.run(Animations.Animal.blink)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
