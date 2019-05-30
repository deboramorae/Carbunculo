//
//  FloorPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorPhysicsBodyComponent : GKComponent {
    
    init(node : SKNode, scene : SKScene) {
        super.init()
        
        let sizePhysicsBody = CGSize.sizeProportinalWithFrame(size: CGSize(width: CGSize.sizeNode.floorNode.width - 55, height: 24))
        
        node.name                           = "floor"
        node.physicsBody                    = SKPhysicsBody(rectangleOf: sizePhysicsBody )
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
