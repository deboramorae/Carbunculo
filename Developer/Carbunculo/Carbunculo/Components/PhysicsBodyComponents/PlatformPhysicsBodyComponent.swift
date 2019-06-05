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
    
    init(node:SKNode, size: CGSize){
        super.init()
        
        let physicBody = CGSize.sizeProportinalWithFrame(size: CGSize(width: size.width - 25, height: size.height - 14))
        
        //tamanho a definir
        node.name = "platform"
//        node.physicsBody                    = SKPhysicsBody(rectangleOf: physicBody)
        node.physicsBody                    = SKPhysicsBody(rectangleOf: physicBody, center: CGPoint(x: 0, y: -1))
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
        node.physicsBody?.categoryBitMask  |= SKPhysicsBody.CategoryBitMask.scenario
        node.physicsBody?.friction           = 0.0
        node.physicsBody?.restitution        = 0.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
