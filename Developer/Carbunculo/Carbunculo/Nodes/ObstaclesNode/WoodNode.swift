//
//  WoodNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit


class WoodNode: SKSpriteNode {
    
    init() {
        
        super.init(texture: nil, color: .brown, size: CGSize.sizeNode.woodNode)
        self.name = "Wood"
        self.position = CGPoint.initialPositionNode.woodNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

