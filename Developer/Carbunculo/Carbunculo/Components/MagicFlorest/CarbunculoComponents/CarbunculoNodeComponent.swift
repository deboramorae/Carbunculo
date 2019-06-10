//
//  CarbunculoNodeComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CarbunculoNodeComponent : GKSKNodeComponent{
    init(node: SKNode, scene: SKScene) {
        
        super.init(node: node)
        scene.addChild(node)
        node.position = CGPoint.initialPositionNode.carbunculoNode
        node.zPosition = 3
        node.run(Animations.carbunculo.idle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
