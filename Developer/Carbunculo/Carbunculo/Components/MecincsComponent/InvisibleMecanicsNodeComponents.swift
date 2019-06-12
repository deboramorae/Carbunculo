//
//  InvisibleMecanicsNodeComponents.swift
//  Carbunculo
//
//  Created by Débora Moraes on 12/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class InvisibleMecanicsNodeComponent : GKSKNodeComponent{
    
    init(node: SKNode, scene: GameScene){
        
        super.init(node: node)
        scene.addChild(node)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
