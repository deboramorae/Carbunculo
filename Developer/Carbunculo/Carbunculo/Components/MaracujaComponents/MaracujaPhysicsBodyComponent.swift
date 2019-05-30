//
//  MaracujaPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MaracujaPhysicsBodyComponent:GKComponent{
    
    var corpofisico:SKPhysicsBody!
    
    init(node:SKNode){
        super.init()
        corpofisico                         = SKPhysicsBody(circleOfRadius: 15)
        node.physicsBody                    = corpofisico
        node.physicsBody?.categoryBitMask   = 1
        node.physicsBody?.collisionBitMask  = 0
        node.physicsBody?.affectedByGravity = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
