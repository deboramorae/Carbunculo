//
//  InvisivleMecanicsPhysicsComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 12/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class InvisibleMecanicsPhysicsComponent : GKComponent{
    init(node: SKNode){
        
        super.init()
        
        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.sizeInvisibleNode)
        node.name                           = "invisibleMecanics"
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask   |= 100
        node.physicsBody?.collisionBitMask   = 0
        node.physicsBody?.contactTestBitMask = 0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
