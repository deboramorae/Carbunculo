//
//  FloorInvisibleNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 07/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorInvisibleNode: SKSpriteNode{
    init(scene: SKScene) {
        
        super.init(texture: nil, color: .clear, size: CGSize.sizeNode.floorMystic)
        self.name = "floorMystic"
        self.position = CGPoint.initialPositionNode.floorMysticInvisible
        self.zPosition = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
