//
//  StonesPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StonesPhysicsBodyComponent : GKComponent{
    init(node: SKNode){
        
        super.init()
//        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.stonesNode)
        node.physicsBody = SKPhysicsBody(circleOfRadius: CGSize.sizeNode.stonesNode.height/2, center: CGPoint(x: -1, y: 0))
        
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
