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

    init(node:SKNode){
        super.init()
        node.physicsBody                    = SKPhysicsBody(rectangleOf: CGSize.sizeNode.woodNode)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask    = 3
        node.physicsBody?.collisionBitMask   = SKPhysicsBody.CategoryBitMask.floorComponent
        node.physicsBody?.contactTestBitMask = 3
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
