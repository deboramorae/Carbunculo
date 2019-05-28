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
        corpofisico      = SKPhysicsBody(circleOfRadius: 30)
        node.physicsBody = corpofisico
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
