//
//  FloorNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit


class FloorNode: SKSpriteNode {
    
    init(scene: SKScene) {
        
        super.init(texture: SKTexture.imageNamed.floor, color: .green, size: CGSize.sizeNode.floorNode)
        self.name = "Floor"
        //self.position = CGPoint.initialPositionNode.floorNode
        self.anchorPoint = CGPoint.anchorPointNode.floorNode
        self.zPosition = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
