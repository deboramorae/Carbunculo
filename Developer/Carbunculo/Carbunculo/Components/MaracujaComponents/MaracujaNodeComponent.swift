//
//  MaracujaNodeComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 30/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MaracujaNodeComponent: GKSKNodeComponent{
    init(node:SKNode, scene:SKScene){
        
        super.init(node: node)
        scene.addChild(node)
        node.run(Animations.Maracuja.loop)
        node.name = "frutinha"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
