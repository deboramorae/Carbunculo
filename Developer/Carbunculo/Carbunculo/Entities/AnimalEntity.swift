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
    
    init(entityManager : EntityManager, scene: GameScene, texture : SKTexture, position: CGPoint, size: CGSize){
        super.init()
        
        let animal = AnimalNode()
        
        animal.texture = texture
        animal.position = position
        animal.size = size
        
        addComponentsToEntity(node: animal, scene: scene)
    }
    
    func addComponentsToEntity(node: SKNode, scene: GameScene){
        
        addComponent(AnimalNodeComponent(node: node, scene: scene))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
