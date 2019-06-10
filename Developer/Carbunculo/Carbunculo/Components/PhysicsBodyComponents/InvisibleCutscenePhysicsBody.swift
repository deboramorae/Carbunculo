//
//  InvisibleCutscenePhysicsBody.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class InvisibleCutscenePhysicsBodyComponent : GKComponent{
    init(node : SKNode){
        super.init()
        
        node.name = "invisibleCutsceneNode"
        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.invisibleChoiceNode)
        
        node.physicsBody?.affectedByGravity   = false
        node.physicsBody?.isDynamic           = false
        
        node.physicsBody?.categoryBitMask    |= 100
        node.physicsBody?.collisionBitMask    = 0
        node.physicsBody?.contactTestBitMask  = 0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
