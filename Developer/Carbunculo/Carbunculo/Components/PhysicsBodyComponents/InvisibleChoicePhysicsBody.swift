//
//  InvisibleChoicePhysicsBody.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class InvisibleChoicePhysicsBodyComponent : GKComponent{
    init(node : SKNode){
        super.init()

        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.invisibleChoiceNode)
        
        node.physicsBody?.affectedByGravity   = false
        node.physicsBody?.isDynamic           = false
        
//        node.physicsBody?.categoryBitMask    |= 1
//        node.physicsBody?.collisionBitMask    = 1
//        node.physicsBody?.contactTestBitMask  = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
