//
//  FloorMysticPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorMysticPhysicsBodyComponent : GKComponent{
    init(node: SKNode){
        
        super.init()
        
          let physicsBody = CGSize.sizeProportinalWithFrame(size: CGSize(width: CGSize.sizeNode.floorMystic.width, height: CGSize.sizeNode.floorMystic.height - 60))
        
        node.physicsBody = SKPhysicsBody(rectangleOf: physicsBody)
        node.physicsBody?.node?.zRotation = 0.0349
        node.name                           = "floorMystic"
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask   |= SKPhysicsBody.CategoryBitMask.scenario
        node.physicsBody?.friction           = 0.0
        node.physicsBody?.restitution        = 0.0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
