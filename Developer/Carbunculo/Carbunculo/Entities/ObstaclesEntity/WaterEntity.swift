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
    
    init(entityManager: EntityManager, cena: GameScene, positionNode : CGPoint, texture: SKTexture, size: CGSize) {
        super.init()

        let node = WaterNode()
        node.position = positionNode
        node.texture = texture
        node.size = size

        addComponentsToEntitie(cena: cena, node: node, size: size)
    }
    
    func addComponentsToEntitie(cena: GameScene, node: WaterNode, size: CGSize){
        addComponent(WaterNodeComponent(node: node, scene: cena))
        addComponent(WaterPhysicsBodyComponent(node: node, size: size))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
