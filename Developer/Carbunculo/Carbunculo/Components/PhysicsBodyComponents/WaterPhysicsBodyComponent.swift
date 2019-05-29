//
//  WaterPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WaterPhysicsBodyComponent:GKComponent{
    init(node:SKNode){
        super.init()
        node.physicsBody                    = SKPhysicsBody(rectangleOf: CGSize.sizeNode.waterNode)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask    = 4
        node.physicsBody?.collisionBitMask   = SKPhysicsBody.CategoryBitMask.scenario
        node.physicsBody?.contactTestBitMask = 3
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
