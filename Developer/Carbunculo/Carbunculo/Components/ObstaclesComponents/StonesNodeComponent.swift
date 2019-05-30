//
//  StonesNodeComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StonesNodeComponent : GKSKNodeComponent{
    
    init(node: SKNode, scene : SKScene){
        super.init(node: node)
        scene.addChild(node)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
