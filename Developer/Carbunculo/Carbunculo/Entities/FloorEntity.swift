//
//  Floor.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class FloorEntity: GKEntity {
    
    init(entityManager: EntityManager, cena: GameScene, positionNode : CGPoint, texture: SKTexture, size: CGSize) {
        super.init()
        
        let floor = FloorNode(scene: cena)
        floor.position = positionNode
        floor.texture = texture
        floor.size = size
        
        self.addComponentsToEntitie(cena: cena, node: floor, size: size)
    }
    
    func addComponentsToEntitie(cena: GameScene, node: FloorNode, size: CGSize) {
        addComponent(GKSKNodeComponent(node: node))
        addComponent(FloorComponent(scene: cena))
        addComponent(FloorPhysicsBodyComponent(node: node, scene: cena, size: size))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
