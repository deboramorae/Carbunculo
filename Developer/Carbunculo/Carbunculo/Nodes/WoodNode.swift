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
    
    init(scene: SKScene) {
        
        super.init(texture: nil, color: .brown, size: CGSize(width: scene.frame.width - scene.frame.width/2, height: 20))
        self.name = "Wood"
        self.position = CGPoint(x: 50, y: -scene.frame.height/2)
        self.zPosition = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

