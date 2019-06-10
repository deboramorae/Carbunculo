//
//  CoracaoEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CoracaoEntity : GKEntity{
    init(entityManager : EntityManager, scene: GameScene, position: CGPoint) {
        super.init()
        
        addComponentsToEntity(scene: scene, position: position)
    }
    
    func addComponentsToEntity(scene: GameScene, position: CGPoint){
        let coracao = CoracaoNode()
        
        coracao.position = position
        coracao.run(Animations.Animal.blink)
        
        addComponent(BalaoExclamacaoNodeComponent(node: coracao, scene: scene))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
