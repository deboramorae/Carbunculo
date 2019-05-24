//
//  PlatformPhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class PlatformPhysicsBodyComponent: GKComponent{
    
    init(node:SKNode){
        super.init()
        
        //tamanho a definir
        node.name = "floor"
        node.physicsBody                    = SKPhysicsBody(rectangleOf: CGSize.sizeNode.platformNode)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask  |= SKPhysicsBody.CategoryBitMask.scenario
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
