//
//  WoodPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WoodPhysicsBodyComponent:GKComponent{

    init(node:SKNode, size: CGSize){
        super.init()
        
        let physicsBody = CGSize.sizeProportinalWithFrame(size: CGSize(width: size.width - 10, height: size.height - 10))
        
        node.physicsBody  = SKPhysicsBody(rectangleOf: physicsBody)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask    = 3
        node.physicsBody?.collisionBitMask   = SKPhysicsBody.CategoryBitMask.floorComponent
        node.physicsBody?.contactTestBitMask = 3
        node.physicsBody?.friction           = 0.0
        node.physicsBody?.restitution        = 0.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
