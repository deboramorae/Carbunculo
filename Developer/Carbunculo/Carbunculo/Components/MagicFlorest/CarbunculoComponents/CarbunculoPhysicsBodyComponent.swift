//
//  CarbunculoPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CarbunculoPhysicsBodyComponent : GKComponent{
    
    init(node: SKNode){
        super.init()
        
        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.carbunculoNode)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask    = 4
        node.physicsBody?.collisionBitMask   = SKPhysicsBody.CategoryBitMask.player
        node.physicsBody?.contactTestBitMask = 3
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
