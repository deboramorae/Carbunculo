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
        
        node.physicsBody = SKPhysicsBody(rectangleOf: CGSize.sizeNode.stonesNode)
        
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask   = 1000
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
