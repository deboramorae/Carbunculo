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
        
        super.init(texture: SKTexture.imageNamed.wood, color: .brown, size: CGSize.sizeNode.woodNode)
        self.name = "Wood"
        self.position = CGPoint.initialPositionNode.woodNode
        self.zPosition = 2
//        self.zRotation = 0.03
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

