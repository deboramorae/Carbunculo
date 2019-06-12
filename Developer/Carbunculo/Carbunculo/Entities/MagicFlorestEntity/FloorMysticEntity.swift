//
//  FloorMysticEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorMysticEntity: GKEntity{
    
    init(entityManager: EntityManager, scene: GameScene, positionInvisibleNode: CGPoint, textureFloor: SKTexture, positionFloor: CGPoint, size: CGSize){
        super.init()
        
        addComponentsToEntity(scene: scene, positionInvisibleNode: positionInvisibleNode, textureFloor: textureFloor, positionFloor: positionFloor, size: size)
        
    }
    
    func addComponentsToEntity(scene: GameScene, positionInvisibleNode: CGPoint, textureFloor: SKTexture, positionFloor: CGPoint, size: CGSize){
        
        let floor = FloorMysticNode(scene: scene)
        let floorInvisible = FloorInvisibleNode(scene: scene)
        
        floor.texture = textureFloor
        floor.position = positionFloor
        floor.size = size
        
        floorInvisible.position = positionInvisibleNode
        floorInvisible.size = size
        
        addComponent(FloorMysticNodeComponent(node: floor, scene: scene))
        addComponent(FloorMysticPhysicsBodyComponent(node: floorInvisible))
        addComponent(FlorInvisibleNodeComponent(node: floorInvisible, scene: scene))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

