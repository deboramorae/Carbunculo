//
//  ChoicesPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesPhysicsBodyComponent : GKComponent{
    init(node : SKNode){
        super.init()
        //a definir
        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 200, height: 200))
        
        node.physicsBody?.affectedByGravity   = false
        node.physicsBody?.isDynamic           = false
        
        node.physicsBody?.categoryBitMask    |= SKPhysicsBody.CategoryBitMask.choices
        node.physicsBody?.collisionBitMask    = SKPhysicsBody.CategoryBitMask.player
        node.physicsBody?.contactTestBitMask  = SKPhysicsBody.CategoryBitMask.player
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
