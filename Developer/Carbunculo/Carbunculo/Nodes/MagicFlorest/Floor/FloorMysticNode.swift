//
//  FloorMysticNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FloorMysticNode: SKSpriteNode{
    init(scene: SKScene) {
        
        super.init(texture: SKTexture.imageNamed.floorMystic, color: .green, size: CGSize.sizeNode.floorMystic)
        self.name = "floor"
        self.position = CGPoint.initialPositionNode.floorMystic
        //self.anchorPoint = CGPoint.anchorPointNode.floorNode
        self.zPosition = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
