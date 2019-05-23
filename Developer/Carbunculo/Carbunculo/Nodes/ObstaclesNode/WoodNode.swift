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
        
        super.init(texture: nil, color: .brown, size: CGSize(width: 50 ,height: 20))
        self.name = "Wood"
        self.position = CGPoint(x: 50, y: -150)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

