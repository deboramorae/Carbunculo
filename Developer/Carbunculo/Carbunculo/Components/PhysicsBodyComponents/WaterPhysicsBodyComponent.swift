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
    init(node:SKNode, size: CGSize){
        super.init()
        
         let physicsBody = CGSize.sizeProportinalWithFrame(size: CGSize(width: size.width, height: size.height - 20))
        
        node.physicsBody                    = SKPhysicsBody(rectangleOf: physicsBody)
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
