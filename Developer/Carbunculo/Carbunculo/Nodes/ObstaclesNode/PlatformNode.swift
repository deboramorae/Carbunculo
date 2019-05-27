//
//  PlatformNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

class PlatformNode : SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture(imageNamed: "plataforma_1"), color: .brown, size: CGSize.sizeNode.platformNode)
        self.name = "Platform"
        self.position = CGPoint.initialPositionNode.platformNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
