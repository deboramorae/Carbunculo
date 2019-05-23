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
        node.physicsBody                    = SKPhysicsBody(circleOfRadius: 15.0)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic         = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
